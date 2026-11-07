.class public final Lcom/venter/shellapp/PHPServerHelper;
.super Ljava/lang/Object;
.source "PHPServerHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\"\u001a\u00020\u00132\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\rJ\u0016\u0010&\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\rJ\u0016\u0010(\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020$J\u0010\u0010*\u001a\u00020$2\u0008\u0010+\u001a\u0004\u0018\u00010\u0005J&\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u00020-R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000bR\u001a\u0010\u001a\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000bR\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u00065"
    }
    d2 = {
        "Lcom/venter/shellapp/PHPServerHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "projectDir",
        "Ljava/io/File;",
        "(Landroid/content/Context;Ljava/io/File;)V",
        "getContext",
        "()Landroid/content/Context;",
        "errorFile",
        "getErrorFile",
        "()Ljava/io/File;",
        "errorTryingTimes",
        "",
        "getErrorTryingTimes",
        "()I",
        "setErrorTryingTimes",
        "(I)V",
        "hasCallConnectionRunnable",
        "",
        "getHasCallConnectionRunnable",
        "()Z",
        "setHasCallConnectionRunnable",
        "(Z)V",
        "pidFile",
        "getPidFile",
        "processPID",
        "getProcessPID",
        "setProcessPID",
        "getProjectDir",
        "serviceIntent",
        "Landroid/content/Intent;",
        "getServiceIntent",
        "()Landroid/content/Intent;",
        "isConnected",
        "urlStr",
        "",
        "timeout",
        "isProcessExist",
        "pid",
        "isServiceExisted",
        "className",
        "read",
        "file",
        "startServer",
        "",
        "handler",
        "Landroid/os/Handler;",
        "port",
        "connectedRunnable",
        "Ljava/lang/Runnable;",
        "errorRunnable",
        "stopServer",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final errorFile:Ljava/io/File;

.field private errorTryingTimes:I

.field private hasCallConnectionRunnable:Z

.field private final pidFile:Ljava/io/File;

.field private processPID:I

.field private final projectDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$8k5atbX_rKvHV0P4Za54F8_RO4o(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/venter/shellapp/PHPServerHelper;->startServer$lambda$0(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/venter/shellapp/PHPServerHelper;->projectDir:Ljava/io/File;

    .line 22
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "php_error"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/venter/shellapp/PHPServerHelper;->errorFile:Ljava/io/File;

    .line 23
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "php_pid"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$getServiceIntent(Lcom/venter/shellapp/PHPServerHelper;)Landroid/content/Intent;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/venter/shellapp/PHPServerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final getServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 17
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    const-class v2, Lcom/venter/shellapp/PHPProcess;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static final startServer$lambda$0(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorRunnable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$connectedRunnable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "php.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    iget-object v3, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/venter/shellapp/Utils$Companion;->copyDataToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "php/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/venter/shellapp/PHPServerHelper;->hasCallConnectionRunnable:Z

    .line 103
    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    iget-object v2, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    iget-object v2, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    .line 106
    invoke-virtual {p0}, Lcom/venter/shellapp/PHPServerHelper;->stopServer()V

    .line 108
    :cond_0
    sget-object v1, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/venter/shellapp/ServerVers$Companion;->setRunningServer(Z)V

    .line 109
    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper;->errorFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 110
    iput v0, p0, Lcom/venter/shellapp/PHPServerHelper;->errorTryingTimes:I

    .line 111
    new-instance v0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;-><init>(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->start()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getErrorFile()Ljava/io/File;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->errorFile:Ljava/io/File;

    return-object v0
.end method

.method public final getErrorTryingTimes()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/venter/shellapp/PHPServerHelper;->errorTryingTimes:I

    return v0
.end method

.method public final getHasCallConnectionRunnable()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/venter/shellapp/PHPServerHelper;->hasCallConnectionRunnable:Z

    return v0
.end method

.method public final getPidFile()Ljava/io/File;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    return-object v0
.end method

.method public final getProcessPID()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    return v0
.end method

.method public final getProjectDir()Ljava/io/File;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->projectDir:Ljava/io/File;

    return-object v0
.end method

.method public final isConnected(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p2, "GET"

    .line 180
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 182
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x194

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 p2, 0x1

    move v0, p2

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p2

    :catch_1
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    return v0
.end method

.method public final isProcessExist(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    .line 151
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    const-string v0, "am.runningAppProcesses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 153
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 166
    iget v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-ne v2, v0, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final read(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "\n"

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 141
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setErrorTryingTimes(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/venter/shellapp/PHPServerHelper;->errorTryingTimes:I

    return-void
.end method

.method public final setHasCallConnectionRunnable(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/venter/shellapp/PHPServerHelper;->hasCallConnectionRunnable:Z

    return-void
.end method

.method public final setProcessPID(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    return-void
.end method

.method public final startServer(Landroid/os/Handler;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectedRunnable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorRunnable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    invoke-virtual {v0}, Lcom/venter/shellapp/ServerVers$Companion;->getRunningServer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 112
    new-instance v7, Lcom/venter/shellapp/PHPServerHelper$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/venter/shellapp/PHPServerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 97
    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stopServer()V
    .locals 3

    .line 117
    iget v0, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    if-eqz v0, :cond_2

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    iget v1, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    invoke-virtual {p0, v0, v1}, Lcom/venter/shellapp/PHPServerHelper;->isProcessExist(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    const-class v1, Lcom/venter/shellapp/PHPProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHPProcess::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/venter/shellapp/PHPServerHelper;->isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->errorFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 127
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->pidFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 122
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/venter/shellapp/PHPServerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 123
    iget v0, p0, Lcom/venter/shellapp/PHPServerHelper;->processPID:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-wide/16 v0, 0x3e8

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
