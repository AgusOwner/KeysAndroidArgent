.class public final enum Lorg/apache/tools/ant/util/ScriptManager;
.super Ljava/lang/Enum;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/util/ScriptManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/util/ScriptManager;

.field public static final enum auto:Lorg/apache/tools/ant/util/ScriptManager;

.field public static final enum bsf:Lorg/apache/tools/ant/util/ScriptManager;

.field public static final enum javax:Lorg/apache/tools/ant/util/ScriptManager;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/util/ScriptManager;
    .locals 3

    .line 24
    sget-object v0, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    sget-object v1, Lorg/apache/tools/ant/util/ScriptManager;->bsf:Lorg/apache/tools/ant/util/ScriptManager;

    sget-object v2, Lorg/apache/tools/ant/util/ScriptManager;->javax:Lorg/apache/tools/ant/util/ScriptManager;

    filled-new-array {v0, v1, v2}, [Lorg/apache/tools/ant/util/ScriptManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lorg/apache/tools/ant/util/ScriptManager;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    new-instance v0, Lorg/apache/tools/ant/util/ScriptManager;

    const-string v1, "bsf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/ScriptManager;->bsf:Lorg/apache/tools/ant/util/ScriptManager;

    new-instance v0, Lorg/apache/tools/ant/util/ScriptManager;

    const-string v1, "javax"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/ScriptManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/ScriptManager;->javax:Lorg/apache/tools/ant/util/ScriptManager;

    .line 24
    invoke-static {}, Lorg/apache/tools/ant/util/ScriptManager;->$values()[Lorg/apache/tools/ant/util/ScriptManager;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/ScriptManager;->$VALUES:[Lorg/apache/tools/ant/util/ScriptManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptManager;
    .locals 1

    .line 24
    const-class v0, Lorg/apache/tools/ant/util/ScriptManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/util/ScriptManager;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/util/ScriptManager;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/tools/ant/util/ScriptManager;->$VALUES:[Lorg/apache/tools/ant/util/ScriptManager;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/util/ScriptManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/util/ScriptManager;

    return-object v0
.end method
