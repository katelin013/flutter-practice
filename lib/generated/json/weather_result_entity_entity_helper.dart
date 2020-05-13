import 'package:flutterwidgetexample/entity/weather_result_entity.dart';

WeatherResultEntityFromJson(WeatherResultEntity data, Map<String, dynamic> json) {
	if (json['success'] != null) {
		data.success = json['success']?.toString();
	}
	if (json['result'] != null) {
		data.result = new WeatherResultEntityResult().fromJson(json['result']);
	}
	if (json['records'] != null) {
		data.records = new WeatherResultEntityRecords().fromJson(json['records']);
	}
	return data;
}

Map<String, dynamic> WeatherResultEntityToJson(WeatherResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['success'] = entity.success;
	if (entity.result != null) {
		data['result'] = entity.result.toJson();
	}
	if (entity.records != null) {
		data['records'] = entity.records.toJson();
	}
	return data;
}

weatherResultEntityResultFromJson(WeatherResultEntityResult data, Map<String, dynamic> json) {
	if (json['resource_id'] != null) {
		data.resourceId = json['resource_id']?.toString();
	}
	if (json['fields'] != null) {
		data.fields = new List<WeatherResultEntityResultField>();
		(json['fields'] as List).forEach((v) {
			data.fields.add(new WeatherResultEntityResultField().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> weatherResultEntityResultToJson(WeatherResultEntityResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['resource_id'] = entity.resourceId;
	if (entity.fields != null) {
		data['fields'] =  entity.fields.map((v) => v.toJson()).toList();
	}
	return data;
}

weatherResultEntityResultFieldFromJson(WeatherResultEntityResultField data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherResultEntityResultFieldToJson(WeatherResultEntityResultField entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['type'] = entity.type;
	return data;
}

weatherResultEntityRecordsFromJson(WeatherResultEntityRecords data, Map<String, dynamic> json) {
	if (json['datasetDescription'] != null) {
		data.datasetDescription = json['datasetDescription']?.toString();
	}
	if (json['location'] != null) {
		data.location = new List<WeatherResultEntityRecordsLocation>();
		(json['location'] as List).forEach((v) {
			data.location.add(new WeatherResultEntityRecordsLocation().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> weatherResultEntityRecordsToJson(WeatherResultEntityRecords entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['datasetDescription'] = entity.datasetDescription;
	if (entity.location != null) {
		data['location'] =  entity.location.map((v) => v.toJson()).toList();
	}
	return data;
}

weatherResultEntityRecordsLocationFromJson(WeatherResultEntityRecordsLocation data, Map<String, dynamic> json) {
	if (json['locationName'] != null) {
		data.locationName = json['locationName']?.toString();
	}
	if (json['weatherElement'] != null) {
		data.weatherElement = new List<WeatherResultEntityRecordsLocationWeatherElemant>();
		(json['weatherElement'] as List).forEach((v) {
			data.weatherElement.add(new WeatherResultEntityRecordsLocationWeatherElemant().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> weatherResultEntityRecordsLocationToJson(WeatherResultEntityRecordsLocation entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['locationName'] = entity.locationName;
	if (entity.weatherElement != null) {
		data['weatherElement'] =  entity.weatherElement.map((v) => v.toJson()).toList();
	}
	return data;
}

weatherResultEntityRecordsLocationWeatherElemantFromJson(WeatherResultEntityRecordsLocationWeatherElemant data, Map<String, dynamic> json) {
	if (json['elementName'] != null) {
		data.elementName = json['elementName']?.toString();
	}
	if (json['time'] != null) {
		data.time = new List<WeatherResultEntityRecordsLocationWeatherElemantTime>();
		(json['time'] as List).forEach((v) {
			data.time.add(new WeatherResultEntityRecordsLocationWeatherElemantTime().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> weatherResultEntityRecordsLocationWeatherElemantToJson(WeatherResultEntityRecordsLocationWeatherElemant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['elementName'] = entity.elementName;
	if (entity.time != null) {
		data['time'] =  entity.time.map((v) => v.toJson()).toList();
	}
	return data;
}

weatherResultEntityRecordsLocationWeatherElemantTimeFromJson(WeatherResultEntityRecordsLocationWeatherElemantTime data, Map<String, dynamic> json) {
	if (json['startTime'] != null) {
		data.startTime = json['startTime']?.toString();
	}
	if (json['endTime'] != null) {
		data.endTime = json['endTime']?.toString();
	}
	if (json['parameter'] != null) {
		data.parameter = new WeatherResultEntityRecordsLocationWeatherElementTimeParameter().fromJson(json['parameter']);
	}
	return data;
}

Map<String, dynamic> weatherResultEntityRecordsLocationWeatherElemantTimeToJson(WeatherResultEntityRecordsLocationWeatherElemantTime entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startTime'] = entity.startTime;
	data['endTime'] = entity.endTime;
	if (entity.parameter != null) {
		data['parameter'] = entity.parameter.toJson();
	}
	return data;
}

weatherResultEntityRecordsLocationWeatherElementTimeParameterFromJson(WeatherResultEntityRecordsLocationWeatherElementTimeParameter data, Map<String, dynamic> json) {
	if (json['parameterName'] != null) {
		data.parameterName = json['parameterName']?.toString();
	}
	if (json['parameterValue'] != null) {
		data.parameterValue = json['parameterValue']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherResultEntityRecordsLocationWeatherElementTimeParameterToJson(WeatherResultEntityRecordsLocationWeatherElementTimeParameter entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['parameterName'] = entity.parameterName;
	data['parameterValue'] = entity.parameterValue;
	return data;
}