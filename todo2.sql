//create the table
CREATE TABLE todo2 (
    id            SERIAL PRIMARY KEY NOT NULL,
    title         varchar(50) NOT NULL,
    details       varchar (100),
    priority      integer DEFAULT 1 NOT NULL,
    created_at    timestamp NOT NULL,
    completed_at  timestamp
);

//add the todos
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Wake up", 1, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Make breakfast", 3, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Take a shower", 2, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Brush Teeth", 2, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Put on deoderant", 1, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Get dressed", 2, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Feed my dog", 1, clock_timestamp);
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Walk my dog", 5, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Wake up wife", 1, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Get ride to school", 1, clock_timestamp());


  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Walk to class", "make sure I have my key fob to get into the building", 2, to_char(interval '8h 15m 00s', 'HH24:MI:SS'), to_char(interval '8h 50m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Claim my chair", "to the left when entering the main room second row from the front", 5, to_char(interval '8h 20m 00s', 'HH24:MI:SS'), to_char(interval '8h 57m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Plug my old mac in", "2010 MacBook air battery problems", 4, to_char(interval '8h 21m 00s', 'HH24:MI:SS'), to_char(interval '8h 58m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Start up my computer", "stare at it while crying on the inside because it's so slow", 3, to_char(interval '8h 23m 00s', 'HH24:MI:SS'), to_char(interval '8h 59m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Open specialization course", "stop crying inside and try to become a Ruby master", 1, to_char(interval '8h 59m 00s', 'HH24:MI:SS'), to_char(interval '9h 01m 00s', 'HH24:MI:SS'));

  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Try to understand lessons", "Attempt the daily if I get it if not do team treehouse", 1, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Grab lunch", "my lovely wife always makes the best sandwhiches", 4, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Continue to learn ruby", "use all the resources available to me and try to master this language", 2, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Find music to work to", "it's always Lamb of God metal helps me think", 4, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("5 o'clock!", "pack my stuff up and run of the building like it's on fire", 2 clock_timestamp());

//pick out certain parts of the table
SELECT * FROM todo2 WHERE priority = 3;
SELECT priority, COUNT(*) FROM todo2 WHERE completed_at IS NULL GROUP BY priority;
SELECT * FROM todo2 WHERE created_at = (SELECT min(created_at) FROM todo WHERE priority = 1 AND completed_at IS NULL);
SELECT * FROM todo2 WHERE completed_at >= 11hr 20min 0sec;
