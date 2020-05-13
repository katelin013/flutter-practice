import 'package:flutterwidgetexample/generated/json/base/json_convert_content.dart';
import 'package:flutterwidgetexample/generated/json/base/json_filed.dart';

class WeatherResultEntity with JsonConvert<WeatherResultEntity> {
	String success;
	WeatherResultEntityResult result;
	WeatherResultEntityRecords records;
}

class WeatherResultEntityResult with JsonConvert<WeatherResultEntityResult> {
	@JSONField(name: "resource_id")
	String resourceId;
	List<WeatherResultEntityResultField> fields;
}

class WeatherResultEntityResultField with JsonConvert<WeatherResultEntityResultField> {
	String id;
	String type;
}

class WeatherResultEntityRecords with JsonConvert<WeatherResultEntityRecords> {
	String datasetDescription;
	List<WeatherResultEntityRecordsLocation> location;
}

class WeatherResultEntityRecordsLocation with JsonConvert<WeatherResultEntityRecordsLocation> {
	String locationName;
	List<WeatherResultEntityRecordsLocationWeatherElemant> weatherElement;
}

class WeatherResultEntityRecordsLocationWeatherElemant with JsonConvert<WeatherResultEntityRecordsLocationWeatherElemant> {
	String elementName;
	List<WeatherResultEntityRecordsLocationWeatherElemantTime> time;
}

class WeatherResultEntityRecordsLocationWeatherElemantTime with JsonConvert<WeatherResultEntityRecordsLocationWeatherElemantTime> {
	String startTime;
	String endTime;
	WeatherResultEntityRecordsLocationWeatherElementTimeParameter parameter;
}

class WeatherResultEntityRecordsLocationWeatherElementTimeParameter with JsonConvert<WeatherResultEntityRecordsLocationWeatherElementTimeParameter> {
	String parameterName;
	String parameterValue;
}
