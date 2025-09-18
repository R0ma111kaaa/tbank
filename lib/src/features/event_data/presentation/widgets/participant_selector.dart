import 'package:flutter/material.dart';
import 'package:tbank/src/common/widgets/participant_card.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';

class ParticipantSelector extends StatefulWidget {
  const ParticipantSelector({
    required this.participants,
    this.initialSelected,
    this.onSelectionChanged,
    this.isMultiSelect = true,
    super.key,
  });

  final List<UserEntity> participants;

  /// если multiSelect = false → тут можно передать 1 юзера
  /// если true → список выбранных
  final List<UserEntity>? initialSelected;

  final void Function(List<UserEntity>)? onSelectionChanged;

  /// режим: один или несколько участников
  final bool isMultiSelect;

  @override
  State<ParticipantSelector> createState() => _ParticipantSelectorState();
}

class _ParticipantSelectorState extends State<ParticipantSelector> {
  late List<UserEntity> selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialSelected ?? [];
  }

  void _toggleSelection(UserEntity user) {
    setState(() {
      if (widget.isMultiSelect) {
        if (selected.contains(user)) {
          selected.remove(user);
        } else {
          selected.add(user);
        }
      } else {
        selected = [user];
      }
    });

    widget.onSelectionChanged?.call(selected);
  }

  bool _isSelected(UserEntity user) => selected.contains(user);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: widget.participants.map((user) {
        final isSelected = _isSelected(user);
        return GestureDetector(
          onTap: () => _toggleSelection(user),
          child: ParticipantCard(
            name: '${user.yandexJson.firstName} ${user.yandexJson.lastName}',
            imageProvider: NetworkImage(user.yandexJson.picture),
            isHost: isSelected,
          ),
        );
      }).toList(),
    );
  }
}
