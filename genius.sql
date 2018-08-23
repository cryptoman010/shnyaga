-- Сейчас я создаю таблицу
CREATE DATABASE food;
  USE food;
CREATE TABLE vagetables (id INT AUTO_INCREMENT , name VARCHAR(30) , amount INT , PRIMARY KEY (id)) ;


-- Здесь я заполняю 1 способом таблицу
 {

  INSERT INTO vagetables VALUES ('Tomato' , 5);
  INSERT INTO vagetables VALUES ('Potato', 10);
  INSERT INTO vagetables VALUES ('Cucumber', 15);
  INSERT INTO vagetables VALUES ('Carrot' , 20);
  }


-- Здесь я заполняю 2 способом таблицу

{
  SELECT * vagetables;
  INSERT INTO vagetables (amount , name) VALUES (25, 'Onion');
  INSERT INTO vagetables (amount , name) VALUES (30 , 'Peper');
  INSERT INTO vagetables (amount , name) VALUES ( 35 , 'Garlic');
}


-- Здесь я использую простой запрос

SELECT * vagetables ;
SELECT amount , name FROM vagetables ;
SELECT id , name FROM vagetable;

-- Здесь я использую уже более сложный запрос

SELECT name , amount FROM vagetables WHERE amount >10 ;
SELECT name , amount FROM vagetables WHERE amount <=10 ;


  -- Здесь я прибавляю уже условие "где" а также оператор "и, или"


SELECT name , amount FROM vagetables WHERE amount >10 or  amount <10 ;
SELECT name , amount FROM vagetables WHERE amount <20 and amount >30 ;

 -- Здесь я использую операторы нужны для поиска по конкретике
SELECT name FROM vagetables where name LIKE 'Tomato';
SELECT name FROM vagetables where name LIKE 'Carrot';
SELECT name FROM vagetables WHERE name LIKE 'Cucumber';
SELECT name FROM vagetables WHERE name LIKE 'C%';


-- Еще более сложная форма запроса
SELECT name , amount FROM vagetables WHERE amount IN (5 ,10 , 15 ,20);
SELECT name FROM vagetables WHERE name IN ('Carrot' , 'Tomato');


-- обычные математические операторы

SELECT amount  , avg(amount) FROM vagetables ;
SELECT amount , max(amount) FROM vagetables;
SELECT amount , min (amount) FROM vagetables ;

-- Обновление таблицы

  UPDATE vagetables SET amount=100 where name='Tomato';
  UPDATE vagetables SET amount =50 where name ='Potato';
  UPDATE vagetables SET amount =40 where name = 'Carrot' and name='Cucumber';

-- Я уже хуй знает что я тут делал
  ALTER TABLE users  add column age Int ;
