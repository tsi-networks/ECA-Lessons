.class public Lcom/example/jigneshpadhiyar/eca/CustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;,
        Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field context:Landroid/content/Context;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "mainActivity"    # Landroid/app/Activity;
    .param p2, "data"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->data:Ljava/util/ArrayList;

    .line 33
    iput-object p2, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->data:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->context:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 66
    new-instance v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;

    invoke-direct {v3, p0}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;-><init>(Lcom/example/jigneshpadhiyar/eca/CustomAdapter;)V

    .line 67
    .local v3, "holder":Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;
    move-object v6, p2

    .line 68
    .local v6, "rowView":Landroid/view/View;
    if-nez v6, :cond_2

    .line 69
    sget-object v8, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04001a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 70
    const v8, 0x7f0c006c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->tv_title:Landroid/widget/TextView;

    .line 71
    const v8, 0x7f0c0026

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    .line 72
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "name":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 81
    .local v5, "pos":I
    if-lez v5, :cond_0

    .line 82
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 84
    :cond_0
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v8, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/OpenSans-Semibold-webfont.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 86
    .local v1, "custom_font":Landroid/graphics/Typeface;
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "else bitmap cache key:&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-static {v4}, Lcom/example/jigneshpadhiyar/eca/MyApplication;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bmThumbnail":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 93
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "else bitmap cache if:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :try_start_0
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "else bitmap cache if:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p1, :cond_1

    .line 97
    new-instance v7, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;

    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    invoke-direct {v7, p0, v8}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/CustomAdapter;Landroid/widget/ImageView;)V

    .line 98
    .local v7, "task":Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v4, v9, v8

    invoke-virtual {v7, v9}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v7    # "task":Lcom/example/jigneshpadhiyar/eca/CustomAdapter$DownloadWebPageTask;
    :cond_1
    :goto_1
    return-object v6

    .line 75
    .end local v0    # "bmThumbnail":Landroid/graphics/Bitmap;
    .end local v1    # "custom_font":Landroid/graphics/Typeface;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;
    check-cast v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;

    .restart local v3    # "holder":Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;
    goto/16 :goto_0

    .line 103
    .restart local v0    # "bmThumbnail":Landroid/graphics/Bitmap;
    .restart local v1    # "custom_font":Landroid/graphics/Typeface;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "pos":I
    :cond_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "else bitmap cache else:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    iget-object v8, v3, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 101
    :catch_0
    move-exception v8

    goto :goto_1
.end method
