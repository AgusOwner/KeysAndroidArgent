.class public final Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;
.super Ljava/lang/Thread;
.source "PHPServerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/venter/shellapp/PHPServerHelper;->startServer(Landroid/os/Handler;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtectionThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "com/venter/shellapp/PHPServerHelper$startServer$ProtectionThread",
        "Ljava/lang/Thread;",
        "(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V",
        "run",
        "",
        "startService",
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
.field final synthetic $connectedRunnable:Ljava/lang/Runnable;

.field final synthetic $errorRunnable:Ljava/lang/Runnable;

.field final synthetic $handler:Landroid/os/Handler;

.field final synthetic $port:I

.field final synthetic this$0:Lcom/venter/shellapp/PHPServerHelper;


# direct methods
.method public constructor <init>(Lcom/venter/shellapp/PHPServerHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorRunnable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$connectedRunnable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    iput p2, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$port:I

    iput-object p3, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$errorRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$connectedRunnable:Ljava/lang/Runnable;

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 45
    :goto_0
    sget-object v0, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    invoke-virtual {v0}, Lcom/venter/shellapp/ServerVers$Companion;->getRunningServer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getPidFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v1}, Lcom/venter/shellapp/PHPServerHelper;->getPidFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    sget-object v1, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    iget-object v2, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v2}, Lcom/venter/shellapp/PHPServerHelper;->getPidFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/venter/shellapp/PHPServerHelper;->setProcessPID(I)V

    .line 54
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getErrorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getErrorTryingTimes()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getErrorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getPidFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getErrorTryingTimes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/venter/shellapp/PHPServerHelper;->setErrorTryingTimes(I)V

    goto/16 :goto_2

    .line 64
    :cond_1
    sget-object v0, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/venter/shellapp/ServerVers$Companion;->setRunningServer(Z)V

    .line 65
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$errorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->stopServer()V

    goto :goto_2

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v3}, Lcom/venter/shellapp/PHPServerHelper;->getProcessPID()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/venter/shellapp/PHPServerHelper;->isProcessExist(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/venter/shellapp/PHPProcess;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PHPProcess::class.java.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/venter/shellapp/PHPServerHelper;->isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->startService()V

    goto :goto_2

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    iget v2, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$port:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://0.0.0.0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/hopweb_test_is_php_is_alive.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/venter/shellapp/PHPServerHelper;->isConnected(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->getHasCallConnectionRunnable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$connectedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0, v1}, Lcom/venter/shellapp/PHPServerHelper;->setHasCallConnectionRunnable(Z)V

    goto :goto_2

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v0}, Lcom/venter/shellapp/PHPServerHelper;->stopServer()V

    .line 88
    invoke-virtual {p0}, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->startService()V

    goto :goto_2

    .line 49
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->startService()V

    :cond_6
    :goto_2
    const-wide/16 v0, 0x3e8

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final startService()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-static {v0}, Lcom/venter/shellapp/PHPServerHelper;->access$getServiceIntent(Lcom/venter/shellapp/PHPServerHelper;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "port"

    .line 35
    iget v2, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->$port:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v1}, Lcom/venter/shellapp/PHPServerHelper;->getProjectDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "projectPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/venter/shellapp/PHPServerHelper$startServer$ProtectionThread;->this$0:Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {v1}, Lcom/venter/shellapp/PHPServerHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
