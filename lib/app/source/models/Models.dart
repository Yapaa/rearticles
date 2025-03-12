class Article {
  int id;
  String title, body;
  List<String> listTags = [];
  Article({
    required this.id,
    required this.title,
    required this.body,
    required this.listTags,
  });
}

List<String> imagesList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgvxaS317Xl0AHkE_Qd4VbPleZDxls6LFzA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0l7EmwbP6VO2SisDbhi11MsBLeTSRUzXBiQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHQ9CQjK8kox2iyII-QT96Qo6F2Wfp11Hkaw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQewL19mDQIuwUrs0cJ0WxFocIJN9uXdhacvA&s'
];

List<Article> article = [
  Article(
    id: 1,
    title: 'Pengembara Lautan',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA).',
    listTags: ['Novel', 'Essay'],
  ),
  Article(
    id: 2,
    title: 'Pejalan Kaki',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA. After establishing herself with the Board through her work Viki was promoted to Executive Director in 2003. Viki entered the Executive Director role with a desire to continue making improvements to the Board’s processes and technology that would further assist the Board as well as the profession it regulates. Among her initial tasks as executive director, were to oversee customized changes to the Board’s licensing software and website, financial software, new staff, office relocation, budgeting and numerous policy and efficiency changes to the Boards program activities. All of the enhancements made have and continue to make the Nevada Board a model agency as viewed by other boards and state agencies.',
    listTags: ['Essay', 'Fiction', 'Action'],
  ),
  Article(
    id: 3,
    title: 'Penjelajah Waktu',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA. After establishing herself with the Board through her work Viki was promoted to Executive Director in 2003. Viki entered the Executive Director role with a desire to continue making improvements to the Board’s processes and technology that would further assist the Board as well as the profession it regulates. Among her initial tasks as executive director, were to oversee customized changes to the Board’s licensing software and website, financial software, new staff, office relocation, budgeting and numerous policy and efficiency changes to the Boards program activities. All of the enhancements made have and continue to make the Nevada Board a model agency as viewed by other boards and state agencies.',
    listTags: ['Descriptive'],
  ),
  Article(
    id: 4,
    title: 'Sendiri tanpa sahabat',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA. After establishing herself with the Board through her work Viki was promoted to Executive Director in 2003. Viki entered the Executive Director role with a desire to continue making improvements to the Board’s processes and technology that would further assist the Board as well as the profession it regulates. Among her initial tasks as executive director, were to oversee customized changes to the Board’s licensing software and website, financial software, new staff, office relocation, budgeting and numerous policy and efficiency changes to the Boards program activities. All of the enhancements made have and continue to make the Nevada Board a model agency as viewed by other boards and state agencies.',
    listTags: ['Essay'],
  ),
  Article(
    id: 5,
    title: 'Belajar Menjadi Lebih Baik',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA. After establishing herself with the Board through her work Viki was promoted to Executive Director in 2003. Viki entered the Executive Director role with a desire to continue making improvements to the Board’s processes and technology that would further assist the Board as well as the profession it regulates. Among her initial tasks as executive director, were to oversee customized changes to the Board’s licensing software and website, financial software, new staff, office relocation, budgeting and numerous policy and efficiency changes to the Boards program activities. All of the enhancements made have and continue to make the Nevada Board a model agency as viewed by other boards and state agencies.',
    listTags: ['Narrative'],
  ),
  Article(
    id: 6,
    title: 'Bersinar',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA.',
    listTags: ['Mystery', 'Fiction', 'Narrative'],
  ),
  Article(
    id: 7,
    title: 'Apa itu Cinta?',
    body: 'Viki A. Windfeldt was named the 2014 recipient of the Lorraine P. Sachs Standard of Excellence Award. This award was established in 2008 by the National Association of State Boards of Accountancy (NASBA). The Lorraine P. Sachs Award, in honor of NASBA Executive Vice President Emeritus Sachs, was established to recognize state board executive directors that have shown outstanding service and commitment to improving the effectiveness of accounting regulation, both locally and nationally. Viki will be presented with the Award at the NASBA Annual Conference in Washington DC. Viki was hired in 1995 by the Nevada State Board of Accountancy (NSBA) as assistant director. Prior to being hired by the NSBA, Viki was with the Nevada State Board of Pharmacy for four years where she served as Board Coordinator. In this role, she was responsible for numerous tasks associated with the Board including regulatory and statutory language writing, board meeting coordination, renewals, licensing and enforcement. Viki brought her previous experience to improve the efficiency and operation of the NSBA. After establishing herself with the Board through her work Viki was promoted to Executive Director in 2003. Viki entered the Executive Director role with a desire to continue making improvements to the Board’s processes and technology that would further assist the Board as well as the profession it regulates. Among her initial tasks as executive director, were to oversee customized changes to the Board’s licensing software and website, financial software, new staff, office relocation, budgeting and numerous policy and efficiency changes to the Boards program activities. All of the enhancements made have and continue to make the Nevada Board a model agency as viewed by other boards and state agencies.',
    listTags: ['Thriller'],
  ),
];
