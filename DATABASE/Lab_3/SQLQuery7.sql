use H_MyBase_H;


CREATE table UZDA
(     UZDYK char(20) primary key,              
      UZDYK_TYPE nvarchar(50),
      UZDYK_CAPACITY int default 1 check (UZDYK_CAPACITY between 1 and 300),  
      UZDYK_NAME  varchar(50)                                     
) 