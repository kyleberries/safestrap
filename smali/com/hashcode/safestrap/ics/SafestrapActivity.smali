.class public Lcom/hashcode/safestrap/ics/SafestrapActivity;
.super Landroid/app/Activity;
.source "SafestrapActivity.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "disclaimer"


# instance fields
.field private buttonInstall:Landroid/widget/Button;

.field private buttonReboot:Landroid/widget/Button;

.field private buttonRebootWriteProtect:Landroid/widget/Button;

.field private buttonUninstall:Landroid/widget/Button;

.field private installDialogThread:Lcom/hashcode/safestrap/ics/InstallDialogThread;

.field private messageText:Landroid/widget/TextView;

.field private pDialog:Landroid/app/ProgressDialog;

.field private rootCheck:Ljava/lang/Boolean;

.field private statusText:Landroid/widget/TextView;

.field private textSystemStatus:Landroid/widget/TextView;

.field private uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;

.field private writeProtect:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->textSystemStatus:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    .line 33
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    .line 34
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonRebootWriteProtect:Landroid/widget/Button;

    .line 35
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->installDialogThread:Lcom/hashcode/safestrap/ics/InstallDialogThread;

    .line 36
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    .line 37
    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->rootCheck:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->writeProtect:Ljava/lang/Boolean;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hashcode/safestrap/ics/SafestrapActivity;Lcom/hashcode/safestrap/ics/InstallDialogThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->installDialogThread:Lcom/hashcode/safestrap/ics/InstallDialogThread;

    return-void
.end method

.method static synthetic access$3(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/InstallDialogThread;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->installDialogThread:Lcom/hashcode/safestrap/ics/InstallDialogThread;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/hashcode/safestrap/ics/SafestrapActivity;Lcom/hashcode/safestrap/ics/UninstallDialogThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    return-void
.end method

.method static synthetic access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    return-object v0
.end method

.method static synthetic access$8(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f050003

    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0, v4}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->setContentView(I)V

    .line 144
    const-string v2, "disclaimer"

    invoke-virtual {p0, v2, v3}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "accepted"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {p0, v3}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->showDialog(I)V

    .line 149
    :cond_0
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    .line 150
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    .line 151
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    .line 152
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonRebootWriteProtect:Landroid/widget/Button;

    .line 153
    invoke-virtual {p0, v4}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f050009

    invoke-virtual {p0, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->textSystemStatus:Landroid/widget/TextView;

    .line 157
    invoke-static {}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->canRunRootCommands()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->rootCheck:Ljava/lang/Boolean;

    .line 158
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->rootCheck:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    new-instance v1, Lcom/hashcode/safestrap/ics/AssetControl;

    invoke-direct {v1}, Lcom/hashcode/safestrap/ics/AssetControl;-><init>()V

    .line 161
    .local v1, unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    .line 163
    const-string v2, "/busybox"

    invoke-virtual {v1, v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAsset(Ljava/lang/String;)V

    .line 164
    const-string v2, "/recovery-check.sh"

    invoke-virtual {v1, v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAsset(Ljava/lang/String;)V

    .line 165
    const-string v2, "/recovery-reboot.sh"

    invoke-virtual {v1, v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAsset(Ljava/lang/String;)V

    .line 166
    const-string v2, "/ss_function.sh"

    invoke-virtual {v1, v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAsset(Ljava/lang/String;)V

    .line 167
    const-string v2, "/ss.config"

    invoke-virtual {v1, v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAsset(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 755 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/busybox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 755 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/*.sh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    new-instance v3, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    invoke-direct {v3, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    new-instance v3, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;

    invoke-direct {v3, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    new-instance v3, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;

    invoke-direct {v3, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonRebootWriteProtect:Landroid/widget/Button;

    new-instance v3, Lcom/hashcode/safestrap/ics/SafestrapActivity$6;

    invoke-direct {v3, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$6;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .end local v1           #unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    :cond_1
    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->setupControls()V

    .line 263
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 112
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f04000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v2, "Agree"

    new-instance v3, Lcom/hashcode/safestrap/ics/SafestrapActivity$1;

    invoke-direct {v3, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$1;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 127
    const-string v3, "Disagree"

    new-instance v4, Lcom/hashcode/safestrap/ics/SafestrapActivity$2;

    invoke-direct {v4, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$2;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 134
    .local v0, alert:Landroid/app/AlertDialog;
    return-object v0
.end method

.method protected setupControls()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonRebootWriteProtect:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->rootCheck:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sh "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/recovery-check.sh "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, inText:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, parts:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 51
    .local v5, vers_s:Ljava/lang/String;
    const/4 v4, 0x0

    .line 52
    .local v4, vers:F
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 53
    .local v0, altbootmode:Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 54
    array-length v6, v3

    if-lt v6, v9, :cond_0

    aget-object v5, v3, v8

    .line 55
    :cond_0
    array-length v6, v3

    if-lt v6, v10, :cond_1

    .line 56
    aget-object v6, v3, v9

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    :cond_1
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 60
    aget-object v6, v3, v10

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->writeProtect:Ljava/lang/Boolean;

    .line 65
    :cond_2
    if-eqz v5, :cond_3

    .line 66
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 68
    :cond_3
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_6

    .line 72
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Not installed"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    :goto_0
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->textSystemStatus:Landroid/widget/TextView;

    const-string v7, "Not Active"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 88
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->textSystemStatus:Landroid/widget/TextView;

    const-string v7, "Active"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_4
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->writeProtect:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 91
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Write Protect Enabled"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonRebootWriteProtect:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    .end local v0           #altbootmode:Ljava/lang/Boolean;
    .end local v2           #inText:Ljava/lang/String;
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #vers:F
    .end local v5           #vers_s:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 75
    .restart local v0       #altbootmode:Ljava/lang/Boolean;
    .restart local v2       #inText:Ljava/lang/String;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #vers:F
    .restart local v5       #vers_s:Ljava/lang/String;
    :cond_6
    const v6, 0x7f04000c

    invoke-virtual {p0, v6}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 76
    .local v1, check_vers:F
    cmpl-float v6, v4, v1

    if-nez v6, :cond_7

    .line 77
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Installed"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_7
    cmpl-float v6, v4, v1

    if-lez v6, :cond_8

    .line 79
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Newer Version Installed"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 82
    :cond_8
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Old Version"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    .end local v0           #altbootmode:Ljava/lang/Boolean;
    .end local v1           #check_vers:F
    .end local v2           #inText:Ljava/lang/String;
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #vers:F
    .end local v5           #vers_s:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->statusText:Landroid/widget/TextView;

    const-string v7, "Not Rooted"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonUninstall:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v6, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonReboot:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
