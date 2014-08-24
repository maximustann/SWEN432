INSERT INTO S.user (
	email_address,
	password
)

values (
	'fred@fred.com',
	'1234'
);

INSERT INTO S.user (
	email_address,
	password
)

values (
	'bob@bob.com',
	'5678'
);
INSERT INTO S.user (
	email_address,
	password
)

values (
	'jane@jane.com',
	'9012'
);

INSERT INTO S.vehicles (
	email_address,
	vehicle_id,
	colour,
	type
)

values (
	'fred@fred.com',
	'abc123',
	'red',
	'sedan'
);

UPDATE S.vehicle_count
SET
	number_of_vehicle = number_of_vehicle + 1

WHERE email_address='fred@fred.com';


INSERT INTO S.vehicles (
	email_address,
	vehicle_id,
	colour,
	type
)

values (
	'fred@fred.com',
	'def123',
	'blue',
	'truck'
);

UPDATE S.vehicle_count
SET
	number_of_vehicle = number_of_vehicle + 1
WHERE email_address='fred@fred.com';

INSERT INTO S.vehicles (
	email_address,
	vehicle_id,
	colour,
	type
)

values (
	'bob@bob.com',
	'ghi123',
	'white',
	'van'
);

UPDATE S.vehicle_count
SET
	number_of_vehicle = number_of_vehicle + 1
WHERE email_address='bob@bob.com';

INSERT INTO S.vehicles (
	email_address,
	vehicle_id,
	colour,
	type
)

values (
	'jane@jane.com',
	'jkl123',
	'black',
	'hatch back'
);

UPDATE S.vehicle_count
SET
	number_of_vehicle = number_of_vehicle + 1
WHERE email_address='jane@jane.com';
INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
	'2014-05-26 10:49:10+1200',
	'jane@jane.com',
	'jkl123',
	-40.66,
	176.5,
	34
);

UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
	'2014-05-26 10:48:40+1200',
	'jane@jane.com',
	'jkl123',
	-41.3,
	176.06,
	38
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:48:10+1200',
'jane@jane.com',
'jkl123',
 -39.523, 175.89, 37
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:47:40+1200',
'jane@jane.com',
'jkl123',
 -40.081, 175.44, 34
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:47:10+1200',
'jane@jane.com',
'jkl123',
-40.478,
174.8, 36

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:46:40+1200',
'jane@jane.com',
'jkl123',
-40.597, 176.87, 35

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:46:10+1200',
'jane@jane.com',
'jkl123',
-41.3,
176.23, 35

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:45:40+1200',
'jane@jane.com',
'jkl123',
-39.798, 175.59, 35

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:45:10+1200',
'jane@jane.com',
'jkl123',
-40.496, 175.06, 32

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:44:40+1200',
'jane@jane.com',
'jkl123',
-41.3, 174.87, 34
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:44:10+1200',
'jane@jane.com',
'jkl123',
-39.394, 174.8, 33

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:43:40+1200',
'jane@jane.com',
'jkl123',
-39.399, 176.58, 32

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:43:10+1200',
'jane@jane.com',
'jkl123',
-39.911, 176.55, 29
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:42:40+1200',
'jane@jane.com',
'jkl123',
-40.27, 175.94, 33

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:42:10+1200',
'jane@jane.com',
'jkl123',
-40.469, 175.73, 37

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:41:10+1200',
'jane@jane.com',
'jkl123',
-41.3, 176.42, 36

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:40:40+1200',
'jane@jane.com',
'jkl123',
-39.518, 175.56, 35

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:40:10+1200',
'jane@jane.com',
'jkl123',
-40.45, 174.8, 39

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:39:40+1200',
'jane@jane.com',
'jkl123',
-40.565, 176.97, 36

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:39:10+1200',
'jane@jane.com',
'jkl123',
-41.3, 176.31, 33
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:38:40+1200',
'jane@jane.com',
'jkl123',
-39.041, 175.62, 30

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:38:10+1200',
'jane@jane.com',
'jkl123',
-39.074, 174.8, 30

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:37:40+1200',
'jane@jane.com',
'jkl123',
-39.357, 176.91, 27

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:37:10+1200',
'jane@jane.com',
'jkl123',
-39.737, 176.34, 27

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:36:40+1200',
'jane@jane.com',
'jkl123',
-40.686, 175.49, 26

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:36:10+1200',
'jane@jane.com',
'jkl123',
-41.3, 174.8, 23

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:35:40+1200',
'jane@jane.com',
'jkl123',
-39.696, 176.81, 20

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:35:10+1200',
'jane@jane.com',
'jkl123',
-40.164, 176.61, 24

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:34:40+1200',
'jane@jane.com',
'jkl123',
-41.099, 176.43, 28

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:34:10+1200',
'jane@jane.com',
'jkl123',
-41.3, 175.86, 32

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:33:40+1200',
'jane@jane.com',
'jkl123',
-39.015, 175.83, 36

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:33:10+1200',
'jane@jane.com',
'jkl123',
-39.325, 174.95, 33

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:32:40+1200',
'jane@jane.com',
'jkl123',
-39.937, 174.93, 33
);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.66, longitude = 176.5, speed = 34
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:32:10+1200',
'jane@jane.com',
'jkl123',
-40.118, 174.8, 30

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.118, longitude = 174.8, speed = 30
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:31:40+1200',
'fred@fred.com',
'def123',
-40.953, 176.93, 34

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='fred@fred.com' and date = '2014-05-26';



UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='fred@fred.com' and vehicle_id = 'def123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -40.953, longitude = 176.93, speed = 34
WHERE email_address='fred@fred.com' and vehicle_id = 'def123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:30:40+1200',
'fred@fred.com',
'abc123',
-39.206, 175.59, 34

);

UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='fred@fred.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';


UPDATE S.vehicle_recent_location
SET latitude = -39.206, longitude = 175.59, speed = 34
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:30:10+1200',
'fred@fred.com',
'abc123',
-39.833, 175.55, 31
);

UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='fred@fred.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -39.833, longitude = 175.55, speed = 31
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';



INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
	'2014-05-26 10:49:40+1200',
	'jane@jane.com',
	'jkl123',
	-39.968,
	174.8,
	30
);


UPDATE S.user_activate_count
SET number_of_datapoint = number_of_datapoint + 1
WHERE email_address='jane@jane.com' and date = '2014-05-26';

UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -39.968, longitude = 174.8, speed = 174.8
WHERE email_address='jane@jane.com' and vehicle_id = 'jkl123' and date='2014-05-26';


INSERT INTO S.datapoint (
	sequence,
	email_address,
	vehicle_id,
	latitude,
	longitude,
	speed
)
values(
'2014-05-26 10:31:10+1200',
'fred@fred.com',
'abc123',
-41.3, 175.95, 34

);


UPDATE S.user_activate_count
SET
	number_of_datapoint = number_of_datapoint + 1
WHERE email_address='fred@fred.com' and date = '2014-05-26';


UPDATE S.user_activate_vehicle
SET count = count + 1
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';

UPDATE S.vehicle_recent_location
SET latitude = -41.3, longitude = 175.95, speed = 34
WHERE email_address='fred@fred.com' and vehicle_id = 'abc123' and date='2014-05-26';


