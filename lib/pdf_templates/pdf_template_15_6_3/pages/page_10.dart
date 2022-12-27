import 'package:pdf/widgets.dart';

import '../common.dart';

class Page10 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        c.buildText('別紙 職種一覧', fontSize: 9),
        SizedBox(width: 32),
        c.buildText('Attachment: A list of occupation', fontSize: 8),
      ]),
      SizedBox(height: 4),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Left
        Expanded(
          flex: 4,
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(children: [
              _buildNumberBox('1'),
              _buildTextBox('経営', 'Executive'),
            ]),
            Row(children: [
              _buildNumberBox('2'),
              _buildTextBox('管理業務（経営者を除く）', 'Management work (excluding executives)'),
            ]),
            Row(children: [
              _buildNumberBox('3'),
              _buildTextBox('調査研究', 'Research'),
            ]),
            Row(children: [
              _buildNumberBox('4', height: 23.5),
              _buildTextBox('技術開発（農林水産分野）', 'Technology development (agriculture, forestry, and fisheries field)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('5', height: 23.5),
              _buildTextBox('技術開発（食品分野）', 'Technology development (food products field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('6', height: 23.5),
              _buildTextBox('技術開発（機械器具分野）', 'Technology development (machinery and equipment field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('7', height: 23.5),
              _buildTextBox('技術開発（その他製造分野）', 'Technology development (other manufacturing field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('8', height: 23.5),
              _buildTextBox('生産管理（食品分野） ', 'Production management (food products field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('9', height: 23.5),
              _buildTextBox('生産管理（機械器具分野） ', 'Production management (machinery and equipment field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('10', height: 23.5),
              _buildTextBox('生産管理（その他製造分野） ', 'Production management (other manufacturing field)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('11', height: 23.5),
              _buildTextBox('建築・土木・測量技術', 'Architecture, civil engineering, surveying techniques', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('12', height: 23.5),
              _buildTextBox('情報処理・通信技術', 'Information processing, communications technology', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('13'),
              _buildTextBox('法律関係業務', 'Legal business'),
            ]),
            Row(children: [
              _buildNumberBox('14'),
              _buildTextBox('金融・保険', 'Finance / insurance'),
            ]),
            Row(children: [
              _buildNumberBox('15'),
              _buildTextBox('コピーライティング', 'Copywriting'),
            ]),
            Row(children: [
              _buildNumberBox('16'),
              _buildTextBox('報道', 'Journalism'),
            ]),
            Row(children: [
              _buildNumberBox('17'),
              _buildTextBox('編集', 'Editing'),
            ]),
            Row(children: [
              _buildNumberBox('18'),
              _buildTextBox('デザイン', 'Design'),
            ]),
            Row(children: [
              _buildNumberBox('19', height: 23.5),
              _buildTextBox('教育（教員免許を有する者が行う教育）', 'Education(education taught by a person with a teaching license)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('20', height: 17.25),
              _buildTextBox(
                '教育（小学校・中学校・高等学校における語学教育）',
                'Education(language education at an elementary school, lower secondary or upper secondary school)',
                rightFontSize: 4,
              ),
            ]),
            Row(children: [
              _buildNumberBox('21'),
              _buildTextBox('教育（専修学校）', 'Education(Advanced vocational school)'),
            ]),
            Row(children: [
              _buildNumberBox('22'),
              _buildTextBox('教育（各種学校）', 'Education(Miscellaneous school)'),
            ]),
            Row(children: [
              _buildNumberBox('23'),
              _buildTextBox('教育（インターナショナルスクール）', 'Education(International school)'),
            ]),
            Row(children: [
              _buildNumberBox('24'),
              _buildTextBox('教育（教育機関を除く）', 'Education (excluding educational institutions)', rightFontSize: 5),
            ]),
            Row(children: [
              _buildNumberBox('25'),
              _buildTextBox('翻訳・通訳', 'Translation / Interpretation'),
            ]),
            Row(children: [
              _buildNumberBox('26'),
              _buildTextBox('海外取引業務', 'Overseas trading business'),
            ]),
            Row(children: [
              _buildNumberBox('27', height: 23.5),
              _buildTextBox('企画事務（マーケティング，リサーチ）', 'Planning administration work (marketing, research)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('28', height: 23.5),
              _buildTextBox('企画事務（広報・宣伝）', 'Planning administration work (public relations, advertising)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('29'),
              _buildTextBox('会計事務', 'Accounting business'),
            ]),
            Row(children: [
              _buildNumberBox('30'),
              _buildTextBox('法人営業 ', 'Corporate sales'),
            ]),
            Row(children: [
              _buildNumberBox('31'),
              _buildTextBox('ＣＡＤオペレーション', 'CAD operation'),
            ]),
            Row(children: [
              _buildNumberBox('32'),
              _buildTextBox('調理', 'Cooking'),
            ]),
            Row(children: [
              _buildNumberBox('33', height: 23.5),
              _buildTextBox('外国特有の建築技術', 'Foreign country-specific construction technology', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('34', height: 23.5),
              _buildTextBox('外国特有の製品製造', 'Foreign country-specific product manufacturing', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('35'),
              _buildTextBox('宝石・貴金属・毛皮加工', 'Jewels, precious metal, fur processing'),
            ]),
            Row(children: [
              _buildNumberBox('36'),
              _buildTextBox('動物の調教', 'Animal training'),
            ]),
            Row(children: [
              _buildNumberBox('37', height: 23.5),
              _buildTextBox('石油・地熱等掘削調査', 'Drilling survey for oil, geothermal energy, etc.', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('38'),
              _buildTextBox('パイロット', 'Pilot'),
            ]),
            Row(children: [
              _buildNumberBox('39'),
              _buildTextBox('スポーツ指導', 'Sports instruction'),
            ]),
            Row(children: [
              _buildNumberBox('40'),
              _buildTextBox('ソムリエ', 'Sommelier'),
            ]),
            Row(children: [
              _buildNumberBox('41'),
              _buildTextBox('介護福祉士', 'Certified care worker'),
            ]),
            Row(children: [
              _buildNumberBox('42'),
              _buildTextBox('研究', 'Research'),
            ]),
            Row(children: [
              _buildNumberBox('43'),
              _buildTextBox('研究の指導', 'Research guidance'),
            ]),
            Row(children: [
              _buildNumberBox('44'),
              _buildTextBox('教育（大学等）', 'Education(university,etc.)'),
            ]),
            Row(children: [
              _buildNumberBox('45'),
              _buildTextBox('記者', 'Press'),
            ]),
            Row(children: [
              _buildNumberBox('46'),
              _buildTextBox('報道カメラマン', 'Press photographer'),
            ]),
            Row(children: [
              _buildNumberBox('47'),
              _buildTextBox('医師', 'Doctor'),
            ]),
            Row(children: [
              _buildNumberBox('48'),
              _buildTextBox('歯科医師', 'Dentist'),
            ]),
            Row(children: [
              _buildNumberBox('49'),
              _buildTextBox('薬剤師', 'Pharmacist'),
            ]),
            Row(children: [
              _buildNumberBox('50'),
              _buildTextBox('看護師', 'Nurse'),
            ]),
            Row(children: [
              _buildNumberBox('51'),
              _buildTextBox('接客（販売店）', 'Service(store)'),
            ]),
            Row(children: [
              _buildNumberBox('52'),
              _buildTextBox('接客（飲食店）', 'Service(restaurant)'),
            ]),
            Row(children: [
              _buildNumberBox('53'),
              _buildTextBox('接客（その他）', 'Service(others)'),
            ]),
            Row(children: [
              _buildNumberBox('54'),
              _buildTextBox('製品製造', 'Product manufacturing'),
            ]),
          ]),
        ),

        Expanded(flex: 1, child: Container()),

        // Right
        Expanded(
          flex: 4,
          child: Column(children: [
            Row(children: [
              _buildNumberBox('55'),
              _buildTextBox('保健師', 'Public health nurse'),
            ]),
            Row(children: [
              _buildNumberBox('56'),
              _buildTextBox('助産師', 'Midwife'),
            ]),
            Row(children: [
              _buildNumberBox('57'),
              _buildTextBox('准看護師', 'Assistant nurse'),
            ]),
            Row(children: [
              _buildNumberBox('58'),
              _buildTextBox('歯科衛生士', 'Dental hygienist'),
            ]),
            Row(children: [
              _buildNumberBox('59'),
              _buildTextBox('診療放射線技師', 'Radiology technician'),
            ]),
            Row(children: [
              _buildNumberBox('60'),
              _buildTextBox('理学療法士', 'Physical therapist'),
            ]),
            Row(children: [
              _buildNumberBox('61'),
              _buildTextBox('作業療法士', 'Occupational therapist'),
            ]),
            Row(children: [
              _buildNumberBox('62'),
              _buildTextBox('視能訓練士', 'Orthoptist'),
            ]),
            Row(children: [
              _buildNumberBox('63'),
              _buildTextBox('臨床工学技士', 'Clinical engineer'),
            ]),
            Row(children: [
              _buildNumberBox('64'),
              _buildTextBox('義肢装具士', 'Prosthetist'),
            ]),
            Row(children: [
              _buildNumberBox('65'),
              _buildTextBox('弁護士', 'Lawyer'),
            ]),
            Row(children: [
              _buildNumberBox('66'),
              _buildTextBox('司法書士', 'Judicial scrivener'),
            ]),
            Row(children: [
              _buildNumberBox('67'),
              _buildTextBox('弁理士', 'Patent attorney'),
            ]),
            Row(children: [
              _buildNumberBox('68'),
              _buildTextBox('土地家屋調査士', 'Land and building investigator'),
            ]),
            Row(children: [
              _buildNumberBox('69'),
              _buildTextBox('外国法事務弁護士', 'Registered foreign-qualified lawyer'),
            ]),
            Row(children: [
              _buildNumberBox('70'),
              _buildTextBox('公認会計士', 'Public accountant'),
            ]),
            Row(children: [
              _buildNumberBox('71', height: 23.5),
              _buildTextBox('外国公認会計士', 'Foreign-qualified certified public accountant', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('72'),
              _buildTextBox('税理士', 'Certified tax accountant'),
            ]),
            Row(children: [
              _buildNumberBox('73', height: 23.5),
              _buildTextBox('社会保険労務士', 'Public consultant on social and labor insurance', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('74', height: 23.5),
              _buildTextBox('行政書士', 'Certified administrative procedures legal specialist', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('75'),
              _buildTextBox('海事代理士', 'Maritime procedure agent'),
            ]),
            Row(children: [
              _buildNumberBox('76'),
              _buildTextBox('著述家', 'Author'),
            ]),
            Row(children: [
              _buildNumberBox('77'),
              _buildTextBox('美術家・写真家', 'Artist/photographer'),
            ]),
            Row(children: [
              _buildNumberBox('78'),
              _buildTextBox('音楽家・舞台芸術家', 'Musician/stage artist'),
            ]),
            Row(children: [
              _buildNumberBox('79'),
              _buildTextBox('宗教家', 'Religious worker'),
            ]),
            Row(children: [
              _buildNumberBox('80'),
              _buildTextBox('家事使用人', 'Housekeeper'),
            ]),
            Row(children: [
              _buildNumberBox('81'),
              _buildTextBox('プロスポーツ選手', 'Professional sports athlete'),
            ]),
            Row(children: [
              _buildNumberBox('82'),
              _buildTextBox('アマチュアスポーツ選手', 'Amateur sports athlete'),
            ]),
            Row(children: [
              _buildNumberBox('83'),
              _buildTextBox('インターンシップ', 'Internship'),
            ]),
            Row(children: [
              _buildNumberBox('84'),
              _buildTextBox('ワーキング・ホリデー', 'Working holiday'),
            ]),
            Row(children: [
              _buildNumberBox('86'),
              _buildTextBox('サマージョブ', 'Summer job'),
            ]),
            Row(children: [
              _buildNumberBox('87'),
              _buildTextBox('国際文化交流', 'International cultural exchange'),
            ]),
            Row(children: [
              _buildNumberBox('88'),
              _buildTextBox('EPA看護師', 'Nurse under EPA'),
            ]),
            Row(children: [
              _buildNumberBox('89'),
              _buildTextBox('EPA介護福祉士', 'Certified Careworker under EPA'),
            ]),
            Row(children: [
              _buildNumberBox('90'),
              _buildTextBox('EPA看護師候補者', 'Nurse Candidates under EPA'),
            ]),
            Row(children: [
              _buildNumberBox('91'),
              _buildTextBox('EPA介護福祉士候補者', 'Certified Careworker Candidates under EPA'),
            ]),
            Row(children: [
              _buildNumberBox('92', height: 23.5),
              _buildTextBox('EPA就学介護福祉士候補者', 'Certified Careworker Candidates (student) under EPA', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('93'),
              _buildTextBox('外国人建設就労者', 'Foreign construction workers'),
            ]),
            Row(children: [
              _buildNumberBox('94'),
              _buildTextBox('外国人造船就労者', 'Foreign shipbuilding workers'),
            ]),
            Row(children: [
              _buildNumberBox('95', height: 23.5),
              _buildTextBox('製造業外国従業員', 'Foreign workers in the field of manufacturing', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('96'),
              _buildTextBox('家事支援者（国家戦略特区）', 'Domestic workers (national strategic zones)'),
            ]),
            Row(children: [
              _buildNumberBox('97', height: 23.5),
              _buildTextBox('耕種農業支援者（国家戦略特区）', 'Crop farming workers (national strategic zones)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('98', height: 23.5),
              _buildTextBox('畜産農業支援者（国家戦略特区）', 'Livestock farming workers (national strategic zones)', height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('99'),
              _buildTextBox('起業活動', 'Entrepreurial activities'),
            ]),
            Row(children: [
              _buildNumberBox('100', height: 23.5),
              _buildTextBox('その他のサービス職業従事者（他に分類されないもの）', 'Other service worker (not categorized elsewhere)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('101'),
              _buildTextBox('農林漁業従事者', 'Agriculture, forestry and fishery workers'),
            ]),
            Row(children: [
              _buildNumberBox('102', height: 23.5),
              _buildTextBox('製品製造・加工処理従事者（金属製品）', 'Product manufacturing / processing worker (metal products)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('103', height: 23.5),
              _buildTextBox(
                  '製品製造・加工処理従事者（金属製品を除く）', 'Product manufacturing / processing worker (except metal products)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('104'),
              _buildTextBox('機械組立従事者', 'Machine assembly worker'),
            ]),
            Row(children: [
              _buildNumberBox('105'),
              _buildTextBox('機械整備・修理従事者', 'Machine maintenance / repair worker'),
            ]),
            Row(children: [
              _buildNumberBox('106'),
              _buildTextBox('機械検査従事者', 'Machine inspection worker'),
            ]),
            Row(children: [
              _buildNumberBox('107'),
              _buildTextBox('建設躯体工事従事者', 'Construction structure worker'),
            ]),
            Row(children: [
              _buildNumberBox('108', height: 23.5),
              _buildTextBox('建設従事者（建設躯体工事従事者を除く）',
                  'Construction worker (except for workers engaged in construction structure work)',
                  height: 23.5, rightFontSize: 5),
            ]),
            Row(children: [
              _buildNumberBox('109', height: 23.5),
              _buildTextBox(
                  'その他の建設・採掘従事者（他に分類されないもの）', 'Other construction / mining workers (not categorized elsewhere)',
                  height: 23.5),
            ]),
            Row(children: [
              _buildNumberBox('110'),
              _buildTextBox('運搬・清掃・包装等従事者', 'Transportation, cleaning, packaging worker'),
            ]),
            Row(children: [
              _buildNumberBox('111'),
              _buildTextBox('外交', 'Diplomat'),
            ]),
            Row(children: [
              _buildNumberBox('112'),
              _buildTextBox('公用', 'Official'),
            ]),
            // Row(children: [
            //   _buildNumberBox('999'),
            //   _buildTextBox('その他', 'Others'),
            // ]),
          ]),
        ),
      ]),
    ]);
  }

  static Widget _buildTextBox(String leftText, String rightText,
      {double? leftFontSize, double? rightFontSize, double? height}) {
    return _buildBox(
      Wrap(children: [
        Container(
          constraints: const BoxConstraints(minWidth: 96),
          child: c.buildText(leftText, fontSize: leftFontSize ?? 7),
        ),
        Container(child: c.buildText(rightText, fontSize: rightFontSize ?? 6)),
      ]),
      width: 226,
      height: height,
    );
  }

  static Widget _buildNumberBox(String text, {double? width, double? height}) {
    return _buildBox(Center(child: c.buildText(text, fontSize: 7)), width: width ?? 16, height: height);
  }

  static Widget _buildBox(Widget child, {double? width, double? height}) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
      width: width,
      height: height,
      child: child,
    );
  }
}
