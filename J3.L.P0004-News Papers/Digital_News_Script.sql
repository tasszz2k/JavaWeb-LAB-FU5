CREATE DATABASE [Digital_News]
GO
USE [Digital_News]
GO

CREATE TABLE [News](
[id] INT IDENTITY(1,1) PRIMARY KEY,
[title] NVARCHAR(255) NOT NULL,
[content] TEXT,
[date] DATETIME,
[writer] NVARCHAR(255)
)

/*INSERT DATA*/
INSERT INTO dbo.News
(title,content,date,writer)
VALUES
(N'Title News 2'
,'    <img class="img-news" src="${pageContext.request.contextPath}/template/images/i1.jpg" alt="i1" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper</p>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>'
,GETDATE()
,N'Writer2')
GO
INSERT INTO dbo.News
(title,content,date,writer)
VALUES
(N'Title News 3'
,'    <img class="img-news" src="template/images/i1.jpg" alt="i1" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper</p>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>'
,GETDATE()
,N'Writer3')
GO
INSERT INTO dbo.News
(title,content,date,writer)
VALUES
(N'Title News 4'
,'    <img class="img-news" src="template/images/i1.jpg" alt="i1" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper</p>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>'
,GETDATE()
,N'Writer1')
GO
INSERT INTO dbo.News
(title,content,date,writer)
VALUES
(N'Title News 5'
,'    <img class="img-news" src="template/images/i1.jpg" alt="i1" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper</p>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>'
,GETDATE()
,N'Writer2')
GO
INSERT INTO dbo.News
(title,content,date,writer)
VALUES
(N'Title News 6'
,'    <img class="img-news" src="template/images/i1.jpg" alt="i1" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper</p>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>'
,GETDATE()
,N'Writer1')

/*SELECT*/
SELECT * FROM dbo.News

SELECT TOP(5) * 
FROM dbo.News
ORDER BY date DESC

SELECT * FROM dbo.News 
WHERE id = 1

SELECT * FROM dbo.News 
WHERE title LIKE '%%'
OR content LIKE '%%'
ORDER BY id DESC
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY

SELECT * FROM dbo.News 
WHERE title LIKE '%%'
OR content LIKE '%%'
ORDER BY id DESC
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY


SELECT *
FROM
(
SELECT *,
ROW_NUMBER() OVER (ORDER BY date) AS "ROW_NUM"
FROM dbo.News
WHERE title LIKE '%%'
OR content LIKE '%%'
) AS "DataSearch"
WHERE "ROW_NUM" BETWEEN 1 AND 3
