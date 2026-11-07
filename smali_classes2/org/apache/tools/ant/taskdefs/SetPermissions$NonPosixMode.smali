.class public final enum Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
.super Ljava/lang/Enum;
.source "SetPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SetPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonPosixMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum pass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum tryDosOrFail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field public static final enum tryDosOrPass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    .locals 4

    .line 65
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->pass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrFail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    sget-object v3, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrPass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v1, "fail"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 69
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v1, "pass"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->pass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 74
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v1, "tryDosOrFail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrFail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 79
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    const-string v1, "tryDosOrPass"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->tryDosOrPass:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 65
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->$values()[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->$VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    .locals 1

    .line 65
    const-class v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->$VALUES:[Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-object v0
.end method
