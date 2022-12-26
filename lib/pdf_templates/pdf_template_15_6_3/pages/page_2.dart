import 'package:pdf/widgets.dart';

import '../common.dart';

class Page2 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
        alignment: Alignment.center,
        child: c.buildText('(このシートは提出する必要はありません。There is no need to submit this sheet.)'),
      ),
      c.buildText('   申請人等作成用２から４，所属機関等作成用等１から4は，入国目的に従って，次の様式を使用してください。'),
      c.buildText('    Select type of form which corresponds to the purpose of entry in Japan.', fontSize: 4),
      Table(
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.top,
        columnWidths: {
          0: const IntrinsicColumnWidth(),
          1: const IntrinsicColumnWidth(),
          2: const IntrinsicColumnWidth(),
          3: const FixedColumnWidth(100),
        },
        children: [
          // Row 0
          TableRow(verticalAlignment: TableCellVerticalAlignment.middle, children: [
            Container(),
            Align(alignment: Alignment.center, child: c.buildText('入国目的　 Purpose of entry')),
            Align(alignment: Alignment.center, child: c.buildText('例　 Example')),
            Column(children: [
              c.buildText('使用する申請書　 Type of form'),
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: {
                  0: const FlexColumnWidth(1),
                  1: const FlexColumnWidth(1),
                },
                children: [
                  TableRow(children: [
                    Column(children: [
                      c.buildText('申請人等作成用', fontSize: 5),
                      c.buildText('For applicants', fontSize: 5),
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Align(alignment: Alignment.center, child: c.buildText('1')),
                          Align(alignment: Alignment.center, child: c.buildText('2')),
                          Align(alignment: Alignment.center, child: c.buildText('3')),
                          Align(alignment: Alignment.center, child: c.buildText('4')),
                        ])
                      ]),
                    ]),
                    Column(children: [
                      c.buildText('所属機関等作成用等', fontSize: 5),
                      c.buildText('For organization', fontSize: 5),
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Align(alignment: Alignment.center, child: c.buildText('1')),
                          Align(alignment: Alignment.center, child: c.buildText('2')),
                          Align(alignment: Alignment.center, child: c.buildText('3')),
                          Align(alignment: Alignment.center, child: c.buildText('4')),
                        ])
                      ]),
                    ]),
                  ]),
                ],
              ),
            ]),
          ]),

          // Row 1
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('1')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '大学等において高度の専門的な能力を有する人材として研究，研究の指導\n又は教育に従事すること（※）',
                  'Activities of highly skilled professionals who engage in research, research guidance or education\nat colleges　（※）',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '大学等における研究の指導又は教育等',
                  'Activities for research, research guidance or education at colleges',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '中学校，高等学校等における語学教育等',
                  'Activities to engage in language instruction at junior high schools and high schools, etc',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '大学教授',
                  'Professor',
                ], fontSize: 5),
                SizedBox(height: 29),
                Divider(height: 4),
                c.buildGText([
                  '中学校の語学教師',
                  'Junior high school language teacher',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 60, child: c.buildText('o')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('I')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('I')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 60, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 2
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('2')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('収入を伴う芸術上の活動　　Activities for the arts that provide an income', fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '収入を伴わない学術・芸術上の活動又は日本特有の文化・技芸の研究・修得',
                  'Academic or artistic activities that provide no income, or activities for the purpose of pursuing learning\nand acquiring Japanese culture or arts',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('作曲家，写真家　　Composer, Photographer', fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '茶道，柔道を修得しようとする者',
                  'Study tea ceremony, judo',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 32, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('J')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('J')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('J')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 32, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 3
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('3')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '外国の宗教団体から派遣されて行う布教活動',
                  'Religious activities conducted by foreign religious workers dispatched by foreign religious organizations',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '司教，宣教師',
                  'Bishop, Missionary',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('K')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('K')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 4
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('4')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '外国の報道機関との契約に基づく報道上の活動',
                  'Journalistic activities conducted on the basis of a contract with a foreign press organization',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '日本にある事業所に期間を定めて転勤して研究活動に従事すること',
                  'Activities of research who have been transferred to a business office in Japan for a limited period of time',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '日本にある事業所に期間を定めて転勤して高度の専門的な能力を有する人材\nとして自然科学又は人文科学の分野の専門的技術又は知識を必要とする業務に\n従事すること（※）',
                  'Activities of highly skilled professionals who have been transferred to\na business office in Japan for a limited period of time and who are to engage in services which\n require knowledge pertinent to the field of natural science or human science　（※）',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '日本にある事業所に期間を定めて転勤して専門的技術等を必要とする業務に\n従事すること',
                  'Activities of specialists who have been transferred to a business office\nin Japan for a limited period of time',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '新聞記者，報道カメラマン',
                  'Journalist, News photographer',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '外資系企業の研究者',
                  'Researcher assigned to a foreign firm',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '外資系企業の駐在員',
                  'Employee assigned to a foreign firm',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 102, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('L')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('L')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 102, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 5
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('5')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '高度の専門的な能力を有する人材として事業の経営又は管理に従事すること(※）',
                  'Activities of highly skilled professionals who operate or manage business （※）',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '事業の経営又は管理',
                  'Operation or management of business',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '企業の社長， 取締役，部長',
                  'President, director , division head of a company',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 31, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('M')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('M')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 31, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 6
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('6')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '高度の専門的な能力を有する人材として研究，研究の指導又は教育に\n従事すること（１に該当する場合を除く。）（※）',
                  'Activities of highly skilled professionals who engage in research,research guidance or education\nat colleges　（Except in cases falling under 1 ）（※）',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '契約に基づき収入を伴う研究を行う活動',
                  'Activities to engage in research that provide income',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '高度の専門的な能力を有する人材として自然科学又は人文科学の分野の専門的\n技術又は知識を必要とする業務に従事すること（４に該当する場合を除く。）（※）',
                  'Activities of highly skilled professionals who engage in services which require knowledge pertinent to the field of\nnatural science or human science （Except in cases falling under 4 ） （※）',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '自然科学若しくは人文科学の分野の専門的技術若しくは知識を必要とする業務又は外国の\n文化に基盤を有する思考等を必要とする業務に従事すること',
                  'Activities to engage in services which require knowledge pertinent to the field of natural science or human science or\nto engage in services which require specific ways of thinking or sensitivity acquired through experience of foreign\nculture',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '介護又は介護の指導を行う業務に従事すること',
                  'Activities to engage in nursing care or teaching nursing care',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '熟練した技能を要する業務に従事すること',
                  'Activities to engage in services which require skills belonging to special fields',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '特定の研究活動，研究事業活動，情報処理活動',
                  'Designated activities to engage in research, business related to research or information-processing\nrelatedservices',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '本邦の大学・大学院で修得した知識及び高い日本語能力を活用した業務に従事すること',
                  "Activities to engage in services using knowledge acquired at a university or a master's program in Japan and\nadvanced Japanese language skills",
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '政府関係機関，企業の研究者',
                  'Researcher of a government body or company',
                ], fontSize: 5),
                SizedBox(height: 29),
                Divider(height: 4),
                c.buildGText([
                  '機械工学等の技術者，マーケティング業務従事者',
                  'Engineer of mechanical engineering，Marketing specialist',
                ], fontSize: 5),
                SizedBox(height: 47.5),
                Divider(height: 4),
                c.buildGText([
                  '介護福祉士',
                  'Certified care worker',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '外国料理の調理師，スポーツ指導者',
                  "Foreign cuisine chef, Sport's instructor",
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '指定された機関の研究者・情報処理技術者',
                  'Researcher or Information-technology engineer of a\n designated organization',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '高い日本語能力を持つ本邦大学卒業者',
                  "Gradutate from a university or a master's program in Japan who has\nadvanced Japanese language skill.",
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 192, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('N')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('N')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('N')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 192, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 7
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('7')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '特定技能雇用契約に基づいて相当程度の知識又は経験を必要とする技能を要する業務に従事するこ\nと',
                  'Engaging in work requiring skills which need considerable knowledge or experience based on an employment\ncontract for specified skilled workers',
                ], fontSize: 5),
                c.buildGText([
                  '特定技能雇用契約に基づいて熟練した技能を要する業務に従事すること',
                  'Engaging in work requiring proficient skills based on an employment contract for specified skilled workers',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '特定技能外国人',
                  'Specified skilled worker',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 40, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
                Container(alignment: Alignment.center, height: 40, child: c.buildText('V')),
              ]),
            ]),
          ]),

          // Row 8
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('8')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['興行 　 Entertainment', ''], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['歌手，モデル　　Singer, Model', ''], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 9
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('9')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['技能実習　　Technical intern training ', ''], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['技能実習生　　Technical intern trainee', ''], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('Y')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('Y')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 10
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('10')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['勉学　　 Study', ''], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['留学生　　Student', ''], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('P')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('P')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('P')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('P')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 11
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('11')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText(['研修 ', 'Training'], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '実務研修を行わない研修生，公的研修を\n行う研修生',
                  'Trainees not including in the on-the-job training, trainees\nwho participate in public training',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 27, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('Q')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('_')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('Q')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('Q')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('Q')),
                Container(alignment: Alignment.center, height: 27, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 12
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('12')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '商用・就職を目的とする者，文化活動又は留学の在留資格を有する者の扶養を\n受けること',
                  'Dependent who lives together with their supporter',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '特定の研究活動等を行う者の扶養を受けること',
                  'Dependent who intends to live together with their supporter whose status is Designated Activities to engage in\nresearch, business related to research or information-processing-relatedservices',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  'EPA看護師又は介護福祉士としての活動を行う者の扶養を受けること',
                  'Dependent who intends to live together with their supporter whose status is Designated Activities\n(Nurse and Certified Careworker under EPA)',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '本邦大学卒業者としての活動を行う者の扶養を受けること',
                  "Dependent who intends to live together with their supporter whose status is Designated Activities\n(Gradutate from a university or master's program in Japan)",
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 92, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('R')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('R')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 92, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 13
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('13')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '日本人，永住者等との婚姻関係，親子関係等に基づく本邦での居住',
                  'Spouse or child of Japanese national, Permanent resident, etc',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '日本人の配偶者',
                  'Spouse of Japanese nationa',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 18, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('T')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('T')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 18, child: c.buildText('-')),
              ]),
            ]),
          ]),

          // Row 14
          TableRow(children: [
            Padding(padding: const EdgeInsets.all(4), child: c.buildText('14')),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '上記以外の目的（1） ',
                  'Other purpose (1) ',
                ], fontSize: 5),
                SizedBox(height: 32),
                Divider(height: 4),
                c.buildGText([
                  '上記以外の目的（2） ',
                  'Other purpose (2) ',
                ], fontSize: 5),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildGText([
                  '外交，公用，弁護士，公認会計士，医師，\n家事使用人，ワーキング・ホリデー，\nアマチュアスポーツ選手，インターンシップ，\n日系四世',
                  'Diplomat, Official, Lawyer, Public accountant, Doctor,\nHousekeeper, Working holiday, Amateur athlete, Internship, \nFourth-generation foreign national of Japanese descent',
                ], fontSize: 5),
                Divider(height: 4),
                c.buildGText([
                  '上記以外の目的（2） ',
                  'Other purpose (2) ',
                ], fontSize: 5),
              ]),
            ),
            Table(border: TableBorder.all(), defaultColumnWidth: const FixedColumnWidth(12.5), children: [
              TableRow(children: [
                Container(alignment: Alignment.center, height: 64, child: c.buildText('○')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('U')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('U')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('U')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('-')),
                Container(alignment: Alignment.center, height: 64, child: c.buildText('-')),
              ]),
            ]),
          ]),
        ],
      ),
    ]);
  }
}
