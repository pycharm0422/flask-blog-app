from flask import Flask, request, render_template, flash, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_login import login_user, login_required, login_manager, logout_user, LoginManager, UserMixin, current_user
from forms import LoginForm, UpdateAccount, RegisterForm, CommentForm

app = Flask(__name__)
app.config['SECRET_KEY'] = '5791628bb0b13ce0c676dfde280ba245'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/aar'
login_manager = LoginManager(app)
db = SQLAlchemy(app)

login_manager.login_view = "login"
login_manager.login_message_category = "info"

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(40), nullable=False)
    password = db.Column(db.String(400), nullable=False)
    posts = db.relationship('Post' ,backref='author', lazy=True)

class Post(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(40), nullable=False)
    content = db.Column(db.String(400), nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)

class Comment(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), db.ForeignKey('user.username'), nullable=False)
    comnt = db.Column(db.String(300), nullable=False)
    comnt_id = db.Column(db.Integer, db.ForeignKey('post.id'), nullable=False)


@app.route('/')
def initial():
    return render_template('initial.html')
@app.route('/home')
def home():
    posts = Post.query.all()
    return render_template('home.html', posts=posts)

@app.route('/post', methods=['GET', 'POST'])
@login_required
def post():
    if request.method == 'POST':
        title = request.form.get('title')
        content = request.form.get('content')
        post = Post(title=title, content=content, user_id=current_user.id)
        if title == "" or content == "":
            flash('Please write the title or post or both ', 'danger')
            return redirect(url_for('home'))
        else:
            db.session.add(post)
            db.session.commit()
        flash('Your Post has been created', 'success')
        return redirect(url_for('home'))
    return render_template('home.html', post=post)

@app.route('/update/<int:post_id>', methods=['GET', 'POST'])
def update(post_id):
    posts = Post.query.get(post_id)
    return render_template('update.html', posts=posts)

@app.route('/delete/<int:post_id>',methods=['GET', 'POST'])
def delete(post_id):
    posts = Post.query.get(post_id)
    if posts.author != current_user:
        abort(403)
    db.session.delete(posts)
    db.session.commit()
    flash('Your post has been deleted.','primary')
    return redirect(url_for('home'))

@app.route('/indi_post/<int:post_id>', methods=['GET', 'POST'])
def indi_post(post_id):
    post = Post.query.get_or_404(post_id)
    # form = CommentForm()
    # if form.validate_on_submit():
    #     comment = Comment(username=current_user.username, comnt=form.comment.data)
    #     db.session.add(comment)
    #     db.session.commit()
    #     return redirect(url_for('home'))
    comments = Comment.query.filter_by(comnt_id=post_id).all()
    return render_template('indi_post.html', post=post, comments=comments)

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        passw = user.password
        if user and passw == form.password.data:
            flash('Login Successful. ', 'success')
            login_user(user)
            return redirect(url_for('home'))
        else:
            flash('Unsuccessfull login. ', 'danger')
            return redirect(url_for('login'))
    return render_template('login.html', form=form)

@app.route('/logout')
def logout():
    logout_user()
    return render_template('initial.html')

@app.route('/updateaccount/<int:user_id>', methods=['GET', 'POST'])
@login_required
def account(user_id):
    form = UpdateAccount()
    user = User.query.get_or_404(user_id)
    if form.validate_on_submit():
        user.username = form.username.data
        flash('Your Account has been updated.', 'success')
        db.session.commit()
    elif request.method == 'GET':
        form.username.data = user.username
    return render_template('account.html', form=form, user=user)

@app.route('/myposts/<int:user_id>', methods=['GET', 'POST'])
@login_required
def myposts(user_id):
    posts = Post.query.filter_by(user_id=current_user.id).all()
    return render_template('myposts.html', posts=posts)

@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm()
    if form.validate_on_submit():
        user = User(username=form.username.data, password=form.password.data)
        db.session.add(user)
        db.session.commit()
        flash('Your have been regsitered','success')
        return redirect(url_for('login'))
    return render_template('register.html', form=form)

@app.route('/comment/<int:post_id>', methods=['GET','POST'])
def comment(post_id):
    if request.method == 'POST':
        username = current_user.username
        comment = request.form.get('comment')
        comments = Comment(username=username, comnt=comment, comnt_id=post_id)
        db.session.add(comments)
        db.session.commit()
        return redirect(url_for('indi_post', post_id = post_id))
    return render_template('indi_post.html', comments=comments)

if __name__ == "__main__":
    app.run(debug=True)