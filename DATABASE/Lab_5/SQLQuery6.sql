select top (1)
(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like '����'),

(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like '��'),
(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like '����')
	from PROGRESS


