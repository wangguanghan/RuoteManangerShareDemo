import 'package:flutter_demo/modle/test_entity.dart';

testEntityFromJson(TestEntity data, Map<String, dynamic> json) {
	if (json['androidStatus'] != null) {
		data.androidStatus = json['androidStatus']?.toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['result'] != null) {
		data.result = new TestResult().fromJson(json['result']);
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	return data;
}

Map<String, dynamic> testEntityToJson(TestEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['androidStatus'] = entity.androidStatus;
	data['msg'] = entity.msg;
	if (entity.result != null) {
		data['result'] = entity.result.toJson();
	}
	data['status'] = entity.status;
	return data;
}

testResultFromJson(TestResult data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<TestResultData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new TestResultData().fromJson(v));
		});
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	return data;
}

Map<String, dynamic> testResultToJson(TestResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['total'] = entity.total;
	return data;
}

testResultDataFromJson(TestResultData data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['symbol'] != null) {
		data.symbol = json['symbol']?.toString();
	}
	if (json['content'] != null) {
		data.content = new List<dynamic>();
		data.content.addAll(json['content']);
	}
	return data;
}

Map<String, dynamic> testResultDataToJson(TestResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['symbol'] = entity.symbol;
	if (entity.content != null) {
		data['content'] =  [];
	}
	return data;
}