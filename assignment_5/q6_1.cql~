consistency any;
insert into S.vehicles (
	email_address,
	vehicle_id,
	colour,
	type
)
values (
	'bob@bob.com',
	'bob123',
	'fire',
	'truck'
);

consistency one;
select * from S.vehicles
where email_address='bob@bob.com' and vehicle_id='bob123';
