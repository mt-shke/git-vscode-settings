from pytube import YouTube

urlInput = input('Enter your video URL: ')

yt = YouTube(urlInput)

yt.streams.filter(progressive=True, file_extension='mp4').order_by(
    'resolution').desc().first().download()
