.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$CMPVersion;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EjbJar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMPVersion"
.end annotation


# static fields
.field public static final CMP1_0:Ljava/lang/String; = "1.0"

.field public static final CMP2_0:Ljava/lang/String; = "2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 2

    const-string v0, "1.0"

    const-string v1, "2.0"

    .line 183
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
