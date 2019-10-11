.class public Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jigneshpadhiyar/eca/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadWebPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;


# direct methods
.method public constructor <init>(Lcom/example/jigneshpadhiyar/eca/CustomAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/jigneshpadhiyar/eca/CustomAdapter;
    .param p2, "x"    # Landroid/widget/ImageView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->image:Landroid/widget/ImageView;

    .line 117
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "bmThumbnail":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 125
    .local v1, "decoded":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "else bitmap cache key URL: $"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    const/16 v3, 0x12c

    const/16 v4, 0xfa

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, v1}, Lcom/example/jigneshpadhiyar/eca/MyApplication;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
