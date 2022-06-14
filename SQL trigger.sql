CREATE TRIGGER Modifica
       ON Cliente
AFTER UPDATE
AS
BEGIN
       SET NOCOUNT ON;
 
       DECLARE @idCliente INT
       DECLARE @Action VARCHAR(50)
 
       SELECT @idCliente = INSERTED.idCliente       
       FROM INSERTED
 
       IF UPDATE(nombre)
       BEGIN
              SET @Action = 'Modifica nombre'
       END
 
       IF UPDATE(estatus)
       BEGIN
              SET @Action = 'Updated Country'
       END
 
       INSERT INTO 
       VALUES(@idCliente, @Action)
END

UPDATE  Cliente Set RFC ='1111111',CURP ='2222222' Where nombre='Jesus Aloso'

select * from Cliente



