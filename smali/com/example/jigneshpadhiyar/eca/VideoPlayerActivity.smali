.class public Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "v"    # Landroid/media/MediaPlayer;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;->finish()V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f040027

    invoke-virtual {p0, v2}, Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;->setContentView(I)V

    .line 20
    const v2, 0x7f0c007a

    invoke-virtual {p0, v2}, Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    .line 22
    .local v1, "v":Landroid/widget/VideoView;
    const/4 v0, 0x0

    .line 23
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/example/jigneshpadhiyar/eca/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 28
    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 30
    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 31
    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must set url extra paremeter in intent."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_1
    return-void
.end method
