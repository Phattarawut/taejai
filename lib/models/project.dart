class Project {
  final String title; // ชื่อโครงการ
  final String description; // คำอธิบายโครงการ
  final int targetAmount; // ยอดที่ต้องการรับบริจาค
  final int duration; // ระยะเวลาโครงการ
  final int receiveAmount; // ยอดที่ได้รับมาแล้ว
  final int donateCount; // จำนวนครั้งที่บริจาค
  final String imageUrl; //url ของภาพ cover
  final String durationText;
  final String area;

  Project({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.durationText,
    required this.area,
  });
}
