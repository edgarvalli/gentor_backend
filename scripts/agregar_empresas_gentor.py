from set_root_path import set_root_path

set_root_path()

import db.sql_server as db

empresas = [
    {
        "RazonSocial": "GENTOR, S.A. DE C.V.",
        "RFC": "GEN760712EM0"
    },
    {
        "RazonSocial": "SERVICIOS CORPORATIVOS GENTOR, S.A.",
        "RFC": "SCG931026LW1"
    },
    {
        "RazonSocial": "GENTOR SERVICIOS, S.A. DE C.V.",
        "RFC": "GSE9212163I9"
    },
    {
        "RazonSocial": "SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V.",
        "RFC": "SEI920618TC5"
    },
    {
        "RazonSocial": "BIOENERGIA DE NUEVO LEON, S.A. DE C.V.",
        "RFC": "BNL020412HB8"
    },
    {
        "RazonSocial": "SEISA SERVICIOS Y TECNOLOGIA, S.A. DE C.V.",
        "RFC": "SST951003FL8"
    },
    {
        "RazonSocial": "ASTRA LYRA S.A. DE C.V.",
        "RFC": "ALY200814LZ4"
    },
    {
        "RazonSocial": "ENVIRONMENT & SOCIETY S.A. DE C.V.",
        "RFC": "EAS200814BU1"
    },
    {
        "RazonSocial": "LAND OPERATION S.A. DE C.V.",
        "RFC": "LOP191204CD6"
    },
    {
        "RazonSocial": "CHP SOLUTIONS, S.A. DE C.V.",
        "RFC": "CSO200716G27"
    },
    {
        "RazonSocial": "DOMOS TELECOMUNICACIONES, S.A. DE C.V.",
        "RFC": "DTE940421L42"
    },
    {
        "RazonSocial": "RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES SA DE CV",
        "RFC": "RDD101105Q91"
    },
    {
        "RazonSocial": "SERVICIOS CORPORATIVOS DMS, S.A DE C.V.",
        "RFC": "SCD9609068X7"
    },
    {
        "RazonSocial": "INGENIERIA Y MEJORAMIENTO AMBIENTAL, S.A. DE C.V.",
        "RFC": "IMA960906DW2"
    },
    {
        "RazonSocial": "PROTECCION INTEGRAL ESPECIALIZADA, S.A. DE C.V.",
        "RFC": "PIE950316LU6"
    },
    {
        "RazonSocial": "ODALTA S.A. DE C.V.",
        "RFC": "ODA200122KH6"
    }
]

db.insertmany("Empresas", empresas)
