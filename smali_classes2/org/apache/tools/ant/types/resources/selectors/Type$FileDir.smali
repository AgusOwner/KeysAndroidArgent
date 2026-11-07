.class public Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/selectors/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDir"
.end annotation


# static fields
.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "dir"

    const-string v1, "any"

    const-string v2, "file"

    .line 47
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;->VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
