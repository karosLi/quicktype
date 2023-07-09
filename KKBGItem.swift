import Foundation

// MARK: - KKBGItem
@objcMembers class KKBGItem: NSObject, YYModel {
    var itemID: Int = 0
    var store: KKStore?
    var info: KKInfo?

    static func modelCustomPropertyMapper() -> [String : Any]? {
        return [
            "itemID": "item_id", 
            "store": "store", 
            "info": "info", 
        ]
    }
}

// MARK: - KKInfo
@objcMembers class KKInfo: NSObject, YYModel {
    var animType: Int = 0
    var animURL: String = ""

    static func modelCustomPropertyMapper() -> [String : Any]? {
        return [
            "animType": "anim_type", 
            "animURL": "anim_url", 
        ]
    }
}

// MARK: - KKStore
@objcMembers class KKStore: NSObject, YYModel {
    var name: String = ""
    var thumbnail: String = ""
    var imgurl: String = ""
    var desc: String = ""
    var price: [KKPrice] = []
    var discountStart: Int = 0
    var discountEnd: Int = 0

    static func modelCustomPropertyMapper() -> [String : Any]? {
        return [
            "name": "name", 
            "thumbnail": "thumbnail", 
            "imgurl": "imgurl", 
            "desc": "desc", 
            "price": "price", 
            "discountStart": "discount_start", 
            "discountEnd": "discount_end", 
        ]
    }

    static func modelContainerPropertyGenericClass() -> [String : Any]? {
        return [
            "price": KKPrice.self,
        ]
    }
}

// MARK: - KKPrice
@objcMembers class KKPrice: NSObject, YYModel {
    var id: Int = 0
    var num: Int = 0
    var discount: Int = 0

    static func modelCustomPropertyMapper() -> [String : Any]? {
        return [
            "id": "id", 
            "num": "num", 
            "discount": "discount", 
        ]
    }
}
