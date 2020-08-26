SELECT authors.au_id as "Author ID" ,au_lname as "Last Name", au_fname as "First name", title as "Title", pub_name as " Publisher"
 FROM authors
    LEFT JOIN titleauthor ON titleauthor.au_id = authors.au_id
    LEFT JOIN titles ON titles.title_id = titleauthor.title_id
    LEFT JOIN publishers ON publishers.pub_id = titles.pub_id
    _____________________________________________________________
    SELECT titleauthor.au_id as "Author ID", 
au_lname as "Last name",
 au_fname as " First name",
  pub_name as " Publisher",
  au_ord as " Title Count"
  FROM authors
	LEFT JOIN titleauthor ON titleauthor.au_id = authors.au_id
    LEFT JOIN titles ON titles.title_id = titleauthor.title_id
    LEFT JOIN publishers ON publishers.pub_id = titles.pub_id
    __________________________________________________________________
    SELECT titleauthor.au_id as "author_id", 
au_lname as "Last_name",
 au_fname as " First_name",
sum(sales.qty) as "TOTAL"
  FROM titleauthor
	LEFT JOIN authors ON titleauthor.au_id = authors.au_id
    LEFT JOIN sales ON sales.stor_id = titleauthor.title_id
    group by author_id,last_name,first_name
	order by TOTAL desc