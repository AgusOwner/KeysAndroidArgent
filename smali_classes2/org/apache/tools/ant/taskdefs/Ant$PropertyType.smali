.class final enum Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
.super Ljava/lang/Enum;
.source "Ant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Ant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

.field public static final enum USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
    .locals 3

    .line 809
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 810
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v1, "INHERITED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    const-string v1, "USER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    .line 809
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->$values()[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
    .locals 1

    .line 809
    const-class v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;
    .locals 1

    .line 809
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    return-object v0
.end method
