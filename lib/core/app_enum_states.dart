// Enum representing different states of audio playback
enum RingtonePlayerState {
  playing,
  paused,
  stopped,
  completed,
  loading,
  error,
}

enum DownloadRingtoneState {
  ringtoneAlreadyDownloaded,
  ringtoneDownloadedSuccessfully,
  permissionsNotGranted,
  downloadException,
}

enum SearchRingtoneState {
  searchRingtonesInit,
  searchRingtonesSuccess,
  searchRingtonesLoading,
  searchRingtonesFailure,
  searchRingtonesEmpty,
}
