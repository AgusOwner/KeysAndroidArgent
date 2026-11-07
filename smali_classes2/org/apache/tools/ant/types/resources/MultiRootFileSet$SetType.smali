.class public final enum Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
.super Ljava/lang/Enum;
.source "MultiRootFileSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum dir:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field public static final enum file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
    .locals 3

    .line 195
    sget-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v1, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->dir:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 196
    new-instance v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v1, "file"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    new-instance v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v1, "dir"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->dir:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    new-instance v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const-string v1, "both"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 195
    invoke-static {}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->$values()[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->$VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
    .locals 1

    .line 195
    const-class v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;
    .locals 1

    .line 195
    sget-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->$VALUES:[Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-object v0
.end method
