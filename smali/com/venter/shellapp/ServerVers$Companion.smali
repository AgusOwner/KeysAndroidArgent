.class public final Lcom/venter/shellapp/ServerVers$Companion;
.super Ljava/lang/Object;
.source "ServerVers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/venter/shellapp/ServerVers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/venter/shellapp/ServerVers$Companion;",
        "",
        "()V",
        "phpServerHelper",
        "Lcom/venter/shellapp/PHPServerHelper;",
        "getPhpServerHelper",
        "()Lcom/venter/shellapp/PHPServerHelper;",
        "setPhpServerHelper",
        "(Lcom/venter/shellapp/PHPServerHelper;)V",
        "runningServer",
        "",
        "getRunningServer",
        "()Z",
        "setRunningServer",
        "(Z)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/venter/shellapp/ServerVers$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPhpServerHelper()Lcom/venter/shellapp/PHPServerHelper;
    .locals 1

    .line 6
    invoke-static {}, Lcom/venter/shellapp/ServerVers;->access$getPhpServerHelper$cp()Lcom/venter/shellapp/PHPServerHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getRunningServer()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/venter/shellapp/ServerVers;->access$getRunningServer$cp()Z

    move-result v0

    return v0
.end method

.method public final setPhpServerHelper(Lcom/venter/shellapp/PHPServerHelper;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/venter/shellapp/ServerVers;->access$setPhpServerHelper$cp(Lcom/venter/shellapp/PHPServerHelper;)V

    return-void
.end method

.method public final setRunningServer(Z)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/venter/shellapp/ServerVers;->access$setRunningServer$cp(Z)V

    return-void
.end method
