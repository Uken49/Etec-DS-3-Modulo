USE bdTransito

INSERT INTO tbMotorista(nomeMotorista, dataNascMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumulada)
VALUES ('Casemiro Rodrigues','20/02/1984', '123456789-10', '123456789101112', 21)
 , ('Edinaldo Pifio','24/03/1997', '324598211-90', '121110987654321', 11)
 , ('Robert D Niro','05/05/2000','232182956-03', '25456712659874', 1)

 
 INSERT INTO tbVeiculo(modeloVeiculo, placa, renavam, anoVeiculo, idMotorista)
 VALUES ('Gol', 'ABC2230', '1234567891', 2012, 1)
  , ('Fox', 'DEF1452', '1987654321', 2008, 1)
  , ('Uno', 'GHI2166', '8521479632', 2011, 1)
  , ('HB20', 'JKL1143', '95135742865', 2019, 2)
  , ('Onix', 'MNO6229', '456821397', 2007, 2)
  , ('Uno', 'PQP7894', '791346285', 2011, 2)
  , ('Sandero', 'RST8527', '8282464679', 2008, 3)
  , ('Corolla', 'UVW469', '4561237896', 2019, 3)
  , ('C3', 'XYZ5235', '321654987', 2010, 3)


 INSERT INTO tbMultas(dataMulta, horaMulta, pontosMulta, idVeiculo)
 VALUES ('11/04/2021', '18:30', 4,  1)
  , ('15/06/2021', '19:12', 2,  1)
  , ('09/03/2021', '21:21', 5,  2)
  , ('22/05/2021', '04:35', 4,  2)
  , ('10/09/2021', '23:59', 3,  3)
  , ('05/11/2021', '07:30', 2,  3)
  , ('04/02/2021', '13:50', 2,  4)
  , ('08/03/2021', '14:50', 2,  4)
  , ('13/03/2021', '15:38', 3,  5)
  , ('30/07/2021', '22:25', 1,  5)
  , ('21/10/2021', '00:15', 1,  6)
  , ('17/12/2021', '00:40', 2,  6)
  , ('02/02/2021', '01:32', 5,  7)
  , ('31/05/2021', '08:25', 2,  7)
  , ('19/07/2021', '06:30', 2,  8)
  , ('05/08/2021', '10:10', 6,  8)
  , ('23/07/2021', '22:27', 4,  9)
  , ('30/04/2021', '10:38', 4,  9)



  