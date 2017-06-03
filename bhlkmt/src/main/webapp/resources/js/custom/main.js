function getObjects(obj, key, val) {
    var objects = [];
    for (var i in obj) {
        if (!obj.hasOwnProperty(i)) continue;
        if (val == "object") {
        	var temp = obj[i][key];
        	if (typeof temp == 'object') {
                objects.push(obj[i]);
            }
        } else {
	        if (obj[i][key] == val) {
	            objects.push(obj[i]);
	        }
        }
    }
    return objects;
}

function getSubKeyValue(object, keys) {
	var tempKeys = keys.slice();
	var result = object;
	while (tempKeys.length > 1 && result[tempKeys[0]] != null) {
		result = result[tempKeys.shift()];
	}
	return result[tempKeys[0]];
}

function setSubKeyValue(object, keys, value) {
	var tempKeys = keys.slice();
	if (tempKeys.length > 1 && object != null) {
		var temp = object[tempKeys.shift()];
		setSubKeyValue(temp, tempKeys, value);
	}
	else {
		object[keys[0]] = value;
	}
}

function getObjectsWithSubKeys(objects, keys, val) {
	var result = [];
	for (var i in objects) {
		if (!objects.hasOwnProperty(i))
			continue;
		var temp = getSubKeyValue(objects[i], keys);
		if ((typeof temp == val || temp == val) && temp != null) {
			result.push(objects[i]);
		}
	}
	return result;
}

function replaceAllUUIDkey(objects, keys) {
    var keyObjects = getObjectsWithSubKeys(objects, keys, 'object');
	for (var i in keyObjects) {
		var tempObject = getSubKeyValue(keyObjects[i], keys);
		var keyUUIDs = getObjectsWithSubKeys(objects, keys, tempObject['@UUID']);
		for (var j in keyUUIDs) {
			setSubKeyValue(keyUUIDs[j], keys, tempObject);
		}
	}
}

function ConvertToDate(date){
	var day = ("0" + date.getDate()).slice(-2);
	var month = ("0" + (date.getMonth() + 1)).slice(-2);
	var rs = date.getFullYear()+"-"+(month)+"-"+(day) ;
	return rs;
}

function formatMoney(n) {
    return (Math.round(n * 100) / 100).toLocaleString() + " VNĐ";
}