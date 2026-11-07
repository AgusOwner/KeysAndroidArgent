.class public Lorg/apache/tools/ant/taskdefs/Length$FileMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileMode"
.end annotation


# static fields
.field static final MODES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "each"

    const-string v1, "all"

    .line 258
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Length$FileMode;->MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 266
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Length$FileMode;->MODES:[Ljava/lang/String;

    return-object v0
.end method
