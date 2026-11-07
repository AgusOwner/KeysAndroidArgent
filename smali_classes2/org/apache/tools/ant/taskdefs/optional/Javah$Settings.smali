.class final enum Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
.super Ljava/lang/Enum;
.source "Javah.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/Javah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

.field public static final enum files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    .locals 3

    .line 495
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    filled-new-array {v0, v1, v2}, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 496
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v1, "cls"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v1, "files"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    const-string v1, "classes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    .line 495
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->$values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    .locals 1

    .line 495
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    .locals 1

    .line 495
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    return-object v0
.end method
