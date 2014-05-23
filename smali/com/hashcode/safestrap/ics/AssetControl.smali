.class public Lcom/hashcode/safestrap/ics/AssetControl;
.super Ljava/lang/Object;
.source "AssetControl.java"


# static fields
.field static final BUFSIZE:I = 0x1448

.field static final ZIP_FILTER:Ljava/lang/String; = "assets"


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field public apkPath:Ljava/lang/String;

.field public mAppRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "Unknown App"

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 10
    .parameter "is"
    .parameter "fos"

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, os:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1448

    :try_start_0
    new-array v1, v6, [B

    .line 81
    .local v1, data:[B
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1448

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .local v5, os:Ljava/io/BufferedOutputStream;
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x1448

    :try_start_1
    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 85
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    if-eqz v5, :cond_3

    .line 91
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 97
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 83
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v6, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 86
    .end local v0           #count:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 87
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while copying: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz v4, :cond_0

    .line 91
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 93
    :catch_1
    move-exception v3

    .line 94
    .local v3, e2:Ljava/io/IOException;
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while closing the stream: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 90
    :goto_3
    if-eqz v4, :cond_2

    .line 91
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 96
    :cond_2
    :goto_4
    throw v6

    .line 93
    :catch_2
    move-exception v3

    .line 94
    .restart local v3       #e2:Ljava/io/IOException;
    iget-object v7, p0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception while closing the stream: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 93
    .end local v3           #e2:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v3

    .line 94
    .restart local v3       #e2:Ljava/io/IOException;
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while closing the stream: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e2:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 88
    .end local v0           #count:I
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 86
    .end local v1           #data:[B
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public getAssets(Ljava/util/zip/ZipFile;)Ljava/util/Vector;
    .locals 5
    .parameter "zip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 101
    .local v2, list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 102
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    return-object v2

    .line 103
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 104
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method unzipAsset(Ljava/lang/String;)V
    .locals 17
    .parameter "filename"

    .prologue
    .line 22
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v9, zipFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 24
    .local v11, zipLastModified:J
    new-instance v8, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 25
    .local v8, zip:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/hashcode/safestrap/ics/AssetControl;->getAssets(Ljava/util/zip/ZipFile;)Ljava/util/Vector;

    move-result-object v4

    .line 26
    .local v4, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    const-string v13, "assets"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 28
    .local v10, zipFilterLength:I
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 29
    .local v2, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_1

    .line 46
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v4           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .end local v9           #zipFile:Ljava/io/File;
    .end local v10           #zipFilterLength:I
    .end local v11           #zipLastModified:J
    :goto_1
    return-void

    .line 30
    .restart local v2       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v4       #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/io/File;
    .restart local v10       #zipFilterLength:I
    .restart local v11       #zipLastModified:J
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 31
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 33
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    invoke-direct {v6, v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v6, outputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_0

    .line 38
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 39
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/hashcode/safestrap/ics/AssetControl;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "chmod 755 "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .end local v9           #zipFile:Ljava/io/File;
    .end local v10           #zipFilterLength:I
    .end local v11           #zipLastModified:J
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method unzipAssets()V
    .locals 17

    .prologue
    .line 50
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v9, zipFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 52
    .local v11, zipLastModified:J
    new-instance v8, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 53
    .local v8, zip:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/hashcode/safestrap/ics/AssetControl;->getAssets(Ljava/util/zip/ZipFile;)Ljava/util/Vector;

    move-result-object v4

    .line 54
    .local v4, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    const-string v13, "assets"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 56
    .local v10, zipFilterLength:I
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 57
    .local v2, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_1

    .line 72
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v4           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .end local v9           #zipFile:Ljava/io/File;
    .end local v10           #zipFilterLength:I
    .end local v11           #zipLastModified:J
    :goto_1
    return-void

    .line 58
    .restart local v2       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v4       #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zipFile:Ljava/io/File;
    .restart local v10       #zipFilterLength:I
    .restart local v11       #zipLastModified:J
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 59
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    invoke-direct {v6, v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v6, outputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_0

    .line 65
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/hashcode/safestrap/ics/AssetControl;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "chmod 755 "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .end local v9           #zipFile:Ljava/io/File;
    .end local v10           #zipFilterLength:I
    .end local v11           #zipLastModified:J
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
