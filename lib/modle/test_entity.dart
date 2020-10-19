import 'package:flutter_demo/generated/json/base/json_convert_content.dart';

class TestEntity with JsonConvert<TestEntity> {
	int androidStatus;
	String msg;
	TestResult result;
	String status;
}

class TestResult with JsonConvert<TestResult> {
	List<TestResultData> data;
	int total;
}

class TestResultData with JsonConvert<TestResultData> {
	String title;
	String symbol;
	List<dynamic> content;
}
