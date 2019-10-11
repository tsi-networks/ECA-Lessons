.class public Lcom/example/jigneshpadhiyar/eca/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static singleton:Lcom/example/jigneshpadhiyar/eca/MyApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/example/jigneshpadhiyar/eca/MyApplication;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    :cond_0
    sget-object v0, Lcom/example/jigneshpadhiyar/eca/MyApplication;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public static getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/example/jigneshpadhiyar/eca/MyApplication;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getInstance()Lcom/example/jigneshpadhiyar/eca/MyApplication;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/example/jigneshpadhiyar/eca/MyApplication;->singleton:Lcom/example/jigneshpadhiyar/eca/MyApplication;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    sput-object p0, Lcom/example/jigneshpadhiyar/eca/MyApplication;->singleton:Lcom/example/jigneshpadhiyar/eca/MyApplication;

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 36
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 37
    .local v0, "cacheSize":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "else memory call"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcom/example/jigneshpadhiyar/eca/MyApplication$1;

    invoke-direct {v2, p0, v0}, Lcom/example/jigneshpadhiyar/eca/MyApplication$1;-><init>(Lcom/example/jigneshpadhiyar/eca/MyApplication;I)V

    sput-object v2, Lcom/example/jigneshpadhiyar/eca/MyApplication;->mMemoryCache:Landroid/util/LruCache;

    .line 46
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 51
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 56
    return-void
.end method
