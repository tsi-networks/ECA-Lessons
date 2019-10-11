.class public Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;,
        Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .param p3, "data"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    .line 32
    iput p2, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->layoutResourceId:I

    .line 33
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    move-object v7, p2

    .line 58
    .local v7, "row":Landroid/view/View;
    const/4 v3, 0x0

    .line 60
    .local v3, "holder":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    if-nez v7, :cond_1

    .line 61
    iget-object v9, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 62
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget v9, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->layoutResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 63
    new-instance v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;

    .end local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    invoke-direct {v3}, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;-><init>()V

    .line 64
    .restart local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    const v9, 0x7f0c0026

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 65
    const v9, 0x7f0c006c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "name":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 77
    .local v6, "pos":I
    if-lez v6, :cond_0

    .line 78
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_0
    iget-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v9, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fonts/OpenSans-Semibold-webfont.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 82
    .local v1, "custom_font":Landroid/graphics/Typeface;
    iget-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "else bitmap cache key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-static {v5}, Lcom/example/jigneshpadhiyar/eca/MyApplication;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bmThumbnail":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 89
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "else bitmap cache if:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    new-instance v8, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;

    iget-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-direct {v8, p0, v9}, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;Landroid/widget/ImageView;)V

    .line 91
    .local v8, "task":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v5, v10, v9

    invoke-virtual {v8, v10}, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    .end local v8    # "task":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$DownloadWebPageTask;
    :goto_1
    return-object v7

    .line 69
    .end local v0    # "bmThumbnail":Landroid/graphics/Bitmap;
    .end local v1    # "custom_font":Landroid/graphics/Typeface;
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    check-cast v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 93
    .restart local v0    # "bmThumbnail":Landroid/graphics/Bitmap;
    .restart local v1    # "custom_font":Landroid/graphics/Typeface;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "pos":I
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "else bitmap cache else:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    iget-object v9, v3, Lcom/example/jigneshpadhiyar/eca/GridViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
