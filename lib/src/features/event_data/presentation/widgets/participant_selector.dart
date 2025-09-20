import 'package:flutter/material.dart';
import 'package:tbank/src/common/widgets/participant_card.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';

class ParticipantSelector extends StatefulWidget {
  const ParticipantSelector({
    required this.participants,
    this.initialSelected,
    this.onSelectionChanged,
    this.isMultiSelect = true,
    this.showUnselectedAsAvatar = false, // новый параметр
    super.key,
  });

  final List<UserEntity> participants;
  final List<UserEntity>? initialSelected;
  final void Function(List<UserEntity>)? onSelectionChanged;
  final bool isMultiSelect;

  /// если true, невыбранные показываем как CircleAvatar
  final bool showUnselectedAsAvatar;

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

        Widget child;

        if (isSelected || !widget.showUnselectedAsAvatar) {
          // выбранный или обычный режим
          child = ParticipantCard(
            name: '${user.yandexJson.firstName} ${user.yandexJson.lastName}',
            imageProvider: NetworkImage(user.yandexJson.picture),
            isHost: isSelected,
          );
        } else {
          // невыбранный + showUnselectedAsAvatar = true
          child = CircleAvatar(
            backgroundImage: NetworkImage(user.yandexJson.picture),
            radius:
                AppDimensions.participantCardHeight /
                2, // делаем такой же высоты
          );
        }

        return GestureDetector(
          onTap: () => _toggleSelection(user),
          child: child,
        );
      }).toList(),
    );
  }
}
