use mvcproject;
insert into positions (position) VALUES ("junior"),
("midle"),
("sinior");

insert into positions (position) VALUES ("blue frog");

use mvcproject;
select id, position from positions;
delete from positions WHERE position = "blue frog";
select id, position from positions;

use mvcproject;
select id, position from positions;
update positions SET position = "senior" WHERE id = 3;
select id, position from positions;

use mvcproject;
insert into employees_list (first_name, last_name, position_id, workhours, projects_amount)
	values ("Sasha", "Markevich", 1, 0, 0),
		   ("Ivan", "Ivanov", 2, 3000, 30);
select * from employees_list;
use mvcproject;
select employees_list.id, employees_list.first_name, employees_list.last_name, positions.position, employees_list.workhours, employees_list.projects_amount 
	from employees_list
	inner join positions on employees_list.id = positions.id;   