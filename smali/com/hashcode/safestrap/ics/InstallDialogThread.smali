.class public Lcom/hashcode/safestrap/ics/InstallDialogThread;
.super Ljava/lang/Thread;
.source "InstallDialogThread.java"


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field public mAppRoot:Ljava/io/File;

.field public packageCodePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->handler:Landroid/os/Handler;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->packageCodePath:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->mAppRoot:Ljava/io/File;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->LOGTAG:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected pause(I)V
    .locals 2
    .parameter "milli"

    .prologue
    .line 18
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected reply(IILjava/lang/String;)V
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "text"

    .prologue
    .line 24
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 25
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 26
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 27
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "Preparing Installation..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    .line 35
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->pause(I)V

    .line 36
    new-instance v2, Lcom/hashcode/safestrap/ics/AssetControl;

    invoke-direct {v2}, Lcom/hashcode/safestrap/ics/AssetControl;-><init>()V

    .line 37
    .local v2, unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->packageCodePath:Ljava/lang/String;

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->mAppRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->LOGTAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    .line 40
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Unpacking Files..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAssets()V

    .line 42
    const/4 v3, 0x1

    const/16 v4, 0x32

    const-string v5, "Checking Busybox..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/InstallDialogThread;->mAppRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, filesDir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 755 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/busybox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 755 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/*.sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const/4 v3, 0x1

    const/16 v4, 0x3c

    const-string v5, "Running Installation Script..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/recovery-install.sh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    const/4 v3, 0x1

    const/16 v4, 0x5a

    const-string v5, "Cleaning Up..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/busybox rm -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/install-files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->pause(I)V

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Installation Complete."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #filesDir:Ljava/lang/String;
    .end local v2           #unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v6, v3}, Lcom/hashcode/safestrap/ics/InstallDialogThread;->reply(IILjava/lang/String;)V

    goto :goto_0
.end method
