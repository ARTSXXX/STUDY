USE UNIVER;
GO

INSERT INTO STUDENT(IDGROUP, NAME, BDAY, INFO)
VALUES(4, '��������� �.�.', '2004-01-28',
'<�������>
<������� �����="��" �����="4245033" ����="2014-11-19" />
<�������>+3753361896919</�������>
<�����>
<������>��������</������>
<�����>�����</�����>
<�����>�����������</�����>
<���>33</���>
<��������>11</��������>
</�����>
</�������>');
GO
SELECT * FROM STUDENT WHERE NAME = '��������� �.�.'
GO
UPDATE STUDENT SET INFO =
'<�������>
<������� �����="��" �����="41332033" ����="19.04.2013" />
<�������>+375336185691</�������>
<�����>
<������>��������</������>
<�����>�����</�����>
<�����>�����������</�����>
<���>4</���>
<��������>5</��������>
</�����>
</�������>' WHERE NAME='��������� �.�.';
GO

SELECT NAME[���], INFO.value('(�������/�������/@�����)[1]', 'CHAR(2)')[����� ��������],
INFO.value('(�������/�������/@�����)[1]', 'VARCHAR(20)')[����� ��������],
INFO.query('/�������/�����')[�����]
FROM STUDENT
WHERE NAME = '��������� �.�.';