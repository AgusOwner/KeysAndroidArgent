.class public Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Checksum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Checksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatElement"
.end annotation


# static fields
.field private static final CHECKSUM:Ljava/lang/String; = "CHECKSUM"

.field private static final MD5SUM:Ljava/lang/String; = "MD5SUM"

.field private static final SVF:Ljava/lang/String; = "SVF"

.field private static formatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/text/MessageFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->formatMap:Ljava/util/HashMap;

    .line 659
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "CHECKSUM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->formatMap:Ljava/util/HashMap;

    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0} *{1}"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "MD5SUM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->formatMap:Ljava/util/HashMap;

    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "MD5 ({1}) = {0}"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "SVF"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static getDefault()Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;
    .locals 2

    .line 669
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;-><init>()V

    const-string v1, "CHECKSUM"

    .line 670
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->setValue(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/text/MessageFormat;
    .locals 2

    .line 679
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->formatMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/MessageFormat;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "MD5SUM"

    const-string v1, "SVF"

    const-string v2, "CHECKSUM"

    .line 688
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
