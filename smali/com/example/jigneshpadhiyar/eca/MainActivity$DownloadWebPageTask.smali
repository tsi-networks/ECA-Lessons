.class Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jigneshpadhiyar/eca/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWebPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;


# direct methods
.method private constructor <init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;Lcom/example/jigneshpadhiyar/eca/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/example/jigneshpadhiyar/eca/MainActivity;
    .param p2, "x1"    # Lcom/example/jigneshpadhiyar/eca/MainActivity$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 283
    const-string v3, ""

    .line 289
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 290
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v6, v6, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "root":Ljava/io/File;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "else ECA video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 294
    .local v2, "listFile":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v5, v2

    if-lez v5, :cond_3

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 297
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_1
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".webm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".avi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    .line 305
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".3gp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "else ECA video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Echo112.webm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 312
    iget-object v5, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v5, v5, Lcom/example/jigneshpadhiyar/eca/MainActivity;->data:Ljava/util/ArrayList;

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v1    # "i":I
    .end local v2    # "listFile":[Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    new-instance v1, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    iget-object v2, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v3, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v3, v3, Lcom/example/jigneshpadhiyar/eca/MainActivity;->data:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridAdapter:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    .line 334
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridAdapter:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 341
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
