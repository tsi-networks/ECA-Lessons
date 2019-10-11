.class public Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;
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

.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;
    .param p2, "x"    # Landroid/widget/ImageView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->image:Landroid/widget/ImageView;

    .line 112
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "bmThumbnail":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "else bitmap cache key URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2, v0}, Lcom/example/jigneshpadhiyar/eca/MyApplication;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
