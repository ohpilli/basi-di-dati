/*exercise 1*/
select distinct L.Surname
from LECTURER as L
  join STUDENT as S on L.Surname = S.Surname
  /*exercise 2*/
select
from LECTURER as L,
  EDITION as C,
  EXAM as E
where L.Id = C.Lecturer
  and C.Course = E.Course
  and C.Year = E.Year
group by L.Id,
  L.Surname,
  L.Course,
  L.Year
having count(*) > 10