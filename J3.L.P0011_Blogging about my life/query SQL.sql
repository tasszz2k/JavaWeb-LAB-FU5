CREATE DATABASE [J3.L.P0011_Blogging about my life]
GO 
USE [J3.L.P0011_Blogging about my life]
GO 
/*-----CREATE TABLE-----*/
CREATE TABLE [category](
[id] INT  IDENTITY(1,1) PRIMARY KEY,
[name] NVARCHAR(255)
)
GO

CREATE TABLE [article](
[id] INT  IDENTITY(1,1) PRIMARY KEY,
[title] NVARCHAR(255),
[content] TEXT,
[published] DATE,
[author] NVARCHAR(255),
[banner] NVARCHAR(255),
[categoryid] INT NOT NULL FOREIGN KEY REFERENCES dbo.category(id)
)

/*INSERT*/
INSERT INTO dbo.category(name)
VALUES('aboutme')
INSERT INTO dbo.category(name)
VALUES('posts')
INSERT INTO dbo.category(name)
VALUES('quote')
INSERT INTO dbo.category(name)
VALUES('photo')

INSERT INTO dbo.article
(title,content,published, author,categoryid)
VALUES
('About Me'
, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.'
,GETDATE()
,'Vivianne Russell'
,1)

INSERT INTO dbo.article
(title,content,published, author,banner,categoryid)
VALUES
('Essential skills for a happy life!'
, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.'
,GETDATE()
,'AAA'
,'i2.jpg'
,2)

INSERT INTO dbo.article
(title,content,published, author,categoryid)
VALUES
('You ve gotta dance'
,'Youve gotta dance like there s nobody watching,
Love like you ll never be hurt,
Sing like there s nobody listening,
And live like it s heaven on earth'
,GETDATE()
,'AAA'
,3)

INSERT INTO dbo.article
(title,content,published, author,banner,categoryid)
VALUES
('Photo', '', GETDATE(), 'AAA', 'i1.jpg', 4)

/*SELECT*/

SELECT * FROM dbo.category
SELECT article.id,title,content,published,author,banner,categoryid,name
FROM dbo.article
INNER JOIN dbo.category ON article.categoryid = category.id
WHERE categoryid != 1