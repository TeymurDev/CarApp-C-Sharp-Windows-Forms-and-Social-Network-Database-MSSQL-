--create database FacebookDb

--use FacebookDb

--create table Users (
--Id int primary key identity,
--Name nvarchar(50)
--)

--create table Posts (
--Id int primary key identity,
--Title nvarchar(50),
--Content nvarchar(500),
--CreationDate date,
--UserId int references Users(Id)
--)

--create table Comments (
--Id int primary key identity,
--Content nvarchar(500),
--CreationDate date,
--PostId int references Posts(Id),
--UserId int references Users(Id)
--)

--insert into Users (Name)
--values ('BlueDragon')

--insert into Posts
--values ('Interesting News', 'lorem ipsum dolor international', '2019-09-10', 3)

--insert into Comments
--values ('Good idea', '2019-09-23', 3, 3)

--create view WhoPosted as
--select 
--Posts.Title, 
--Posts.Content,
--Posts.CreationDate,
--Users.Name
--from Posts
--join Users on Posts.UserId = Users.Id;

--create view FullCommentInfo as
--select 
--Comments.Content,
--Comments.CreationDate,
--Posts.Title as 'Post Title',
--Users.Name  as 'User Name'
--from Comments
--join Posts on Comments.PostId = Posts.Id
--join Users on Comments.UserId = Users.Id

--create procedure usp_GetPostByDate @minDate date, @maxDate date
--as
--select *
--from Posts
--where CreationDate between @minDate AND @maxDate

--execute usp_GetPostByDate '2019.09.20' ,'2019.09.21'

--create procedure usp_GetPostedUser @username int
--as
--select *
--from Posts
--where UserId=@username

--execute usp_GetPostedUser 1

--create procedure usp_GetComments @postid int
--as
--select *
--from Comments
--where PostId=@postid

--execute usp_GetComments 2
