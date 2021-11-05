from set_root_path import set_root_path
set_root_path()

import lib.sql_server as db

empresas = db.fetchall("select * from Empresas")

for e in empresas:
    table = e['RFC']
    query = f"""
    CREATE TABLE IF NOT EXISTS [{table}]
        (
            [Version] nvarchar (10) not null,
            [TipoComprobante] nvarchar(40) not null,
            [Folio] nvarchar(10),
            [Serie] nvarchar(10),
            [UUID] nvarchar(50) not null unique,
            [Origen] nvarchar (50) not null,
            [FechaTimbrado] datetime,
            [RazonSocialEmisor] nvarchar(250) not null,
            [RazonSocialReceptor] nvarchar(250) not null,
            [RFCEmisor] nvarchar(20) not null,
            [RFCReceptor] nvarchar(20) not null,
            [FechaFacturacion] datetime not null,
            [FormaDePago] nvarchar(50) not null,
            [MetodoDePago] nvarchar(50) not null,
            [Moneda] nvarchar(30) not null,
            [TipoDeCambio] float not null,
            [SubTotal] float not null,
            [Iva] float not null,
            [Total] float not null,
            [Cancelado] int not null,
            [ClaveNomina] nvarchar(50),
            [TipoNomina] nvarchar(50),
            [PeriodicidadPago] nvarchar(50),
            [UsoCFDI] nvarchar(50),
            [Observaciones01] nvarchar(50),
            [Observaciones02] nvarchar(50),
            [Observaciones03] nvarchar(50),
            [Observaciones04] nvarchar(50),
            [Observaciones05] nvarchar(50),
            [Observaciones06] nvarchar(50),
            [Observaciones07] nvarchar(50),
            [Observaciones08] nvarchar(50),
            [Observaciones09] nvarchar(50),
            [Observaciones10] nvarchar(50),
            [ExtraNumerico01] float,
            [ExtraNumerico02] float,
            [ExtraNumerico03] float,
            [ExtraNumerico04] float,
            [ExtraNumerico05] float,
            [ExtraNumerico06] float,
            [ExtraNumerico07] float,
            [ExtraNumerico08] float,
            [ExtraNumerico09] float,
            [ExtraNumerico10] float
        )   
    """

    db.commit(query=query)

    query_index = f"CREATE INDEX guardata ON {table} (FechaFacturacion,Origen,TipoComprobante)"
    db.commit(query=query_index)