.class public final Lcom/venter/shellapp/ServerVers;
.super Ljava/lang/Object;
.source "ServerVers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/venter/shellapp/ServerVers$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/venter/shellapp/ServerVers;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/venter/shellapp/ServerVers$Companion;

.field private static phpServerHelper:Lcom/venter/shellapp/PHPServerHelper;

.field private static runningServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/venter/shellapp/ServerVers$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/venter/shellapp/ServerVers$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPhpServerHelper$cp()Lcom/venter/shellapp/PHPServerHelper;
    .locals 1

    .line 3
    sget-object v0, Lcom/venter/shellapp/ServerVers;->phpServerHelper:Lcom/venter/shellapp/PHPServerHelper;

    return-object v0
.end method

.method public static final synthetic access$getRunningServer$cp()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/venter/shellapp/ServerVers;->runningServer:Z

    return v0
.end method

.method public static final synthetic access$setPhpServerHelper$cp(Lcom/venter/shellapp/PHPServerHelper;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/venter/shellapp/ServerVers;->phpServerHelper:Lcom/venter/shellapp/PHPServerHelper;

    return-void
.end method

.method public static final synthetic access$setRunningServer$cp(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/venter/shellapp/ServerVers;->runningServer:Z

    return-void
.end method
