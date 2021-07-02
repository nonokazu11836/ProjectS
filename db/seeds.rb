# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Student.create
Student.create(name:"岡 鈴奈",    student_id:'201001',gakka_id:1);
Student.create(name:"幸田 春奈",  student_id:'201002',gakka_id:1);
Student.create(name:"原 ののか",  student_id:'201003',gakka_id:1);
Student.create(name:"細木 栞",    student_id:'201004',gakka_id:1);

Student.create(name:"浅田 夕稀乃",student_id:'202001',gakka_id:2);
Student.create(name:"安達 悠也",  student_id:'202003',gakka_id:2);
Student.create(name:"糸原 竜之介",student_id:'202004',gakka_id:2);
Student.create(name:"影山 久明",  student_id:'202005',gakka_id:2);
Student.create(name:"小原 珠々華",student_id:'202006',gakka_id:2);
Student.create(name:"品川 洸人",  student_id:'202007',gakka_id:2);
Student.create(name:"永吉 弘季",  student_id:'202022',gakka_id:2);
Student.create(name:"深田 遥大",  student_id:'202008',gakka_id:2);
Student.create(name:"福島 悠人",  student_id:'202009',gakka_id:2);
Student.create(name:"福田 留美",  student_id:'202010',gakka_id:2);
Student.create(name:"堀内 航",    student_id:'202011',gakka_id:2);
Student.create(name:"村上 楓佳",  student_id:'202012',gakka_id:2);

Student.create(name:"阿食 龍二",  student_id:'202002',gakka_id:3);
Student.create(name:"飯塚 宥介",  student_id:'202013',gakka_id:3);
Student.create(name:"板倉 啓太",  student_id:'202014',gakka_id:3);
Student.create(name:"大森 千慧",  student_id:'202015',gakka_id:3);
Student.create(name:"落合 徹",    student_id:'202016',gakka_id:3);
Student.create(name:"狩野 啓太",  student_id:'202017',gakka_id:3);
Student.create(name:"杉本 美香",  student_id:'202018',gakka_id:3);
Student.create(name:"須田 一輝",  student_id:'202019',gakka_id:3);
Student.create(name:"須田 健太",  student_id:'202020',gakka_id:3);
Student.create(name:"長島 唯人",  student_id:'202021',gakka_id:3);
Student.create(name:"錦織 清美",  student_id:'202023',gakka_id:3);
Student.create(name:"野々村 和樹",student_id:'202024',gakka_id:3);
Student.create(name:"服部 勇人",  student_id:'202025',gakka_id:3);
Student.create(name:"原 英寿",    student_id:'202026',gakka_id:3);
Student.create(name:"槇原 隼人",  student_id:'202027',gakka_id:3);
Student.create(name:"三島 航心",  student_id:'202028',gakka_id:3);
Student.create(name:"三谷 香世",  student_id:'202029',gakka_id:3);

#Event.create
Event.create(name:"入学式");
Event.create(name:"サマーキャンプ");
Event.create(name:"学園祭");
Event.create(name:"卒業式");
  #image: File.open('保存先のパス')


Gakka.create(name:"医療");
Gakka.create(name:"ITビジネス");
Gakka.create(name:"SE");