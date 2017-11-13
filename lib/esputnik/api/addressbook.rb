module Esputnik
  module API
    class Addressbook
      attr_reader  :id, :address_book_id, :name, :field_groups

      alias_method :id, :address_book_id

      def initialize(args)
        @address_book_id = args['addressBookId']
        @name = args['name']
        @field_groups = args['fieldGroups']
      end

    end
  end
end
# {
#   "addressBook": {
#     "addressBookId": "23113",
#     "name": "Основной",
#     "fieldGroups": [
#       {
#         "name": "Personal",
#         "profileKey": "PERSONAL",
#         "fields": [
#           {
#             "id": "54840",
#             "name": "name",
#             "fieldKey": "NAME",
#             "description": {
#               "type": "textfield",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55493",
#             "name": "id",
#             "fieldKey": "ID",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1000000"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55494",
#             "name": "domen",
#             "fieldKey": "DOMEN",
#             "description": {
#               "type": "textfield",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55495",
#             "name": "ab6",
#             "fieldKey": "AB6",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "6"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55496",
#             "name": "male_female",
#             "fieldKey": "MALE_FEMALE",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55497",
#             "name": "city",
#             "fieldKey": "CITY",
#             "description": {
#               "type": "textfield",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55498",
#             "name": "lastbuy",
#             "fieldKey": "LASTBUY",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55499",
#             "name": "activebonus",
#             "fieldKey": "ACTIVEBONUS",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55500",
#             "name": "allpurchases",
#             "fieldKey": "ALLPURCHASES",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "100"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55501",
#             "name": "registereddate",
#             "fieldKey": "REGISTEREDDATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55502",
#             "name": "sum_allpurchases",
#             "fieldKey": "SUM_ALLPURCHASES",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1000000"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55503",
#             "name": "lastlogin",
#             "fieldKey": "LASTLOGIN",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55504",
#             "name": "razvlechenija_date",
#             "fieldKey": "RAZVLECHENIJA_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55505",
#             "name": "krasota_i_spa_date",
#             "fieldKey": "KRASOTA_I_SPA_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55506",
#             "name": "turizm_i_otdyh_date",
#             "fieldKey": "TURIZM_I_OTDYH_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55507",
#             "name": "tovari_dr_date",
#             "fieldKey": "TOVARI_DR_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55508",
#             "name": "eda_i_restorany_date",
#             "fieldKey": "EDA_I_RESTORANY_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55511",
#             "name": "zdorove_date",
#             "fieldKey": "ZDOROVE_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55512",
#             "name": "sport_i_fitnes_date",
#             "fieldKey": "SPORT_I_FITNES_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55513",
#             "name": "obuchenie_date",
#             "fieldKey": "OBUCHENIE_DATE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55514",
#             "name": "activefriends",
#             "fieldKey": "ACTIVEFRIENDS",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55515",
#             "name": "bonusaccount",
#             "fieldKey": "BONUSACCOUNT",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "100000"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55516",
#             "name": "mobile",
#             "fieldKey": "MOBILE",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55517",
#             "name": "birthday",
#             "fieldKey": "BIRTHDAY",
#             "description": {
#               "type": "date",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55518",
#             "name": "autologin",
#             "fieldKey": "AUTOLOGIN",
#             "description": {
#               "type": "textfield",
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55519",
#             "name": "razvlechenija_buy",
#             "fieldKey": "RAZVLECHENIJA_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55520",
#             "name": "krasota_i_spa_buy",
#             "fieldKey": "KRASOTA_I_SPA_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55523",
#             "name": "turizm_i_otdyh_buy",
#             "fieldKey": "TURIZM_I_OTDYH_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55524",
#             "name": "tovari_dr_buy",
#             "fieldKey": "TOVARI_DR_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55525",
#             "name": "eda_i_restorany_buy",
#             "fieldKey": "EDA_I_RESTORANY_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55526",
#             "name": "zdorove_buy",
#             "fieldKey": "ZDOROVE_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55527",
#             "name": "sport_i_fitnes_buy",
#             "fieldKey": "SPORT_I_FITNES_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55528",
#             "name": "obuchenie_buy",
#             "fieldKey": "OBUCHENIE_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           },
#           {
#             "id": "55529",
#             "name": "activefriends_buy",
#             "fieldKey": "ACTIVEFRIENDS_BUY",
#             "description": {
#               "type": "number",
#               "allowedValues": {
#                 "minValue": "0",
#                 "maxValue": "1"
#               },
#               "required": "false",
#               "readonly": "false"
#             }
#           }
#         ]
#       },
#       {
#         "name": "public",
#         "profileKey": "PUBLIC",
#         "fields": {
#           "id": "61286",
#           "name": "domen",
#           "fieldKey": "DOMEN",
#           "description": {
#             "type": "textfield",
#             "required": "false",
#             "readonly": "false"
#           }
#         }
#       }
#     ]
#   }
# }
