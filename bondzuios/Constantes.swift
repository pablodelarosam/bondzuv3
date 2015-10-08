//
//  Constantes.swift
//  bondzuios
//
//  Created by Luis Mariano Arobes on 13/08/15.
//  Copyright (c) 2015 Bondzu. All rights reserved.
//

import Foundation
import UIKit

class Constantes
{
    static let COLOR_NARANJA_NAVBAR:UIColor = UIColor.orangeColor()
    static let STRIPE_PLUBISHABLE_KEY = "pk_test_5A3XM2TUHd6pob50dw7jhxA0"
    
}

let LOCALIZED_STRING = "locale"


enum TableNames : String{
    case Events_table = "Calendar"
}


enum TableEventsColumnNames : String{
    case Name = "title"
    case Description = "description"
    case Start_Day = "start_date"
    case End_Day = "end_date"
    case Image_Name = "event_photo"
    case Animal_ID = "id_animal"
}