import 'package:flutter/material.dart';
import '../../theme/moon_colors.dart';
import '../../theme/moon_text_styles.dart';

class MoonTableColumn {
  final String label;
  final double? width;

  const MoonTableColumn(this.label, {this.width});
}

class MoonTable extends StatelessWidget {
  final List<MoonTableColumn> columns;
  final List<List<Widget>> rows;

  const MoonTable({
    super.key,
    required this.columns,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(MoonColors.surface),
        headingTextStyle:
            MoonTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w600),
        dataTextStyle: MoonTextStyles.bodySmall,
        columns: [
          for (final col in columns)
            DataColumn(
                label: SizedBox(width: col.width, child: Text(col.label))),
        ],
        rows: [
          for (final row in rows)
            DataRow(cells: [for (final cell in row) DataCell(cell)]),
        ],
      ),
    );
  }
}
